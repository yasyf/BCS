property username : ""
property pass : ""
property computerpass : ""

--decode credtentials
set username to rot13(username)
set pass to rot13(pass)
set computerpass to rot13(computerpass)

activate
display dialog "Welcome to the Brentwood College School Student Computer Setup. This Script will map your network drive and install the school printers. Click OK to proceed."

activate
if username is null or pass is null or username is "" or pass is "" then
	collectCredentials(false)
end if

if computerpass is "" or computerpass is null then
	display dialog "Please enter your COMPUTER password:" default answer "" with hidden answer
	set computerpass to text returned of result
	-- The repeat section below is an optional error checking routine to ensure the password is valid
	set pass_stat to "Incorrect"
	repeat until pass_stat is "Correct"
		try
			set theFinderPID to do shell script "ps -axww | /usr/bin/grep '[/]Finder'| awk '{print $1}' | head -1"
			do shell script "renice 1 " & theFinderPID password computerpass with administrator privileges
			do shell script "renice 0 " & theFinderPID password computerpass with administrator privileges
			set pass_stat to "Correct"
		on error
			display dialog "Sorry, the password entered was not correct. Please try again:" default answer "" with hidden answer
			set computerpass to text returned of result
		end try
	end repeat
end if

activate

set printers to (choose from list {"Alex", "Allard", "Ellis", "Hopehouse", "Mackenzie", "Privett", "Rogers", "Whittall"} with prompt "Which House Are You In?")

mountDrives()

activate

display dialog "Creating Optional Desktop Shortcuts" buttons {"Cancel"} giving up after 2

try
	do shell script "rm ~/Desktop/" & username & "\\$"
end try

try
	do shell script "rm ~/Desktop/share"
end try

try
	do shell script "osascript -e 'tell application \"Finder\" to make new alias file at desktop to POSIX file \"/Volumes/" & username & "\"'"
	do shell script "osascript -e 'tell application \"Finder\" to make new alias file at desktop to POSIX file \"/Volumes/share\"'"
end try

-- Install Papercut

activate
display dialog "Installing Print Software" buttons {"Cancel"} giving up after 2

try
	do shell script "rmdir /Volumes/papercut"
end try
try
	do shell script "mkdir /Volumes/papercut"
	do shell script smb_mount & "//" & username & ":" & passwd & "@gazug.brentwood.bc.ca/pcclient/mac /Volumes/papercut"
	do shell script "mkdir ~/Downloads/papercut"
	do shell script "cp -R /Volumes/papercut/* ~/Downloads/papercut/"
	do shell script "ditto ~/Downloads/papercut/PCClient.app /Applications/PCClient.app"
	do shell script "rm -R ~/Downloads/papercut"
	do shell script "find '/Applications/PCClient.app' -exec chmod 775 {} \\;"
	do shell script "rm -fr ~/Library/Preferences/PCClient 2>/dev/null"
	do shell script "umount /Volumes/papercut"
end try

try
	tell application "Terminal"
		do script "/Applications/PCClient.app/Contents/MacOS/JavaApplicationStub biz.papercut.pcng.client.uit.UserClient -a"
	end tell
end try

try
	tell application "System Events"
		if (login item "PCClient" exists) is false then make new login item at end of login items with properties {path:"/Applications/PCClient.app", hidden:false, kind:application, name:"PCClient"}
	end tell
end try
try
	do shell script "cat /Applications/PCClient.app/Contents/Info.plist | sed 'N;$!P;$!D;$d' > /Applications/PCClient.app/Contents/Info.plist.tmp"
	do shell script "echo '<key>LSUIElement</key> <true/> </dict> </plist>' >> /Applications/PCClient.app/Contents/Info.plist.tmp"
	do shell script "mv /Applications/PCClient.app/Contents/Info.plist.tmp /Applications/PCClient.app/Contents/Info.plist"
end try

try
	do shell script "rmdir /Volumes/setup"
end try

try
	do shell script "mkdir /Volumes/setup"
end try

activate
try
	do shell script smb_mount & "//setup:setup@bombur.brentwood.bc.ca/setup$ /Volumes/setup"
	
	display dialog "Installing Printer: Ross" buttons {"Cancel"} giving up after 2
	
	do shell script "lpadmin -p rossprinter -E -v lpd://gazug.brentwood.bc.ca/rossprinter -P /Volumes/setup/Ricohmp4501ps.ppd"
	
	display dialog "Installing Printer: Crooks" buttons {"Cancel"} giving up after 2
	
	do shell script "lpadmin -p Crooks -E -v lpd://gazug.brentwood.bc.ca/Crooks -P /Volumes/setup/RicohMP_C4000.ppd"
	
	if printers is not "" then
		
		try
			do shell script "sudo installer -pkg /Volumes/setup/gutenprint.mpkg -target /" password computerpass with administrator privileges
		end try
		
		display dialog "Installing Printer: " & printers buttons {"Cancel"} giving up after 2
		
		do shell script "lpadmin -p " & printers & " -E -v lpd://gazug.brentwood.bc.ca/" & printers & " -m \"gutenprint.5.2://pcl-g_6/expert Generic PCL 6/PCL XL Printer - CUPS+Gutenprint v5.2.9\""
	end if
	
	do shell script "umount /Volumes/setup"
end try

--encode credtentials
set username to rot13(username)
set pass to rot13(pass)
set computerpass to rot13(computerpass)

display dialog "Setup Complete!" buttons {"Ok"} default button 1


on collectCredentials(incorrect)
	activate
	if incorrect is true then
		display dialog "Your BCS username or password was incorrect. Please try again."
	end if
	display dialog "Please enter your BCS username (first.last)" default answer ""
	set username to escapeTheString(the text returned of the result)
	
	activate
	
	display dialog "Please enter your BCS password." default answer "" with hidden answer
	set pass to escapeTheString(the text returned of the result)
	
end collectCredentials

on escapeTheString(theString)
	set chars to every character of theString
	repeat with i from 1 to length of chars
		if "!$&\"'*(){[|;<>?~` \\" contains (item i of chars as text) then
			set item i of chars to "\\" & (item i of chars as text)
		end if
	end repeat
	return every item of chars as string
end escapeTheString

on rot13(textString)
	local outChars
	set outChars to {}
	repeat with ch in (characters of textString)
		if (ch ³ "a" and ch ² "m") or (ch ³ "A" and ch ² "M") then
			set ch to character id ((id of ch) + 13)
		else if (ch ³ "n" and ch ² "z") or (ch ³ "N" and ch ² "Z") then
			set ch to character id ((id of ch) - 13)
		end if
		set end of outChars to ch
	end repeat
	return outChars as text
end rot13

on mountDrives()
	set smb_mount to "mount -t smbfs "
	set errorBool to false
	set finishedBool to false
	repeat until finishedBool is true
		activate
		display dialog "Mapping home drive" buttons {"Cancel"} giving up after 2
		
		try
			do shell script "rmdir /Volumes/" & username
		end try
		try
			do shell script "mkdir /Volumes/" & username
			
		end try
		try
			do shell script smb_mount & "//" & username & ":" & pass & "@frodo.brentwood.bc.ca/" & username & "$ /Volumes/" & username
		on error
			set errorBool to true
		end try
		
		activate
		display dialog "Mapping share drive" buttons {"Cancel"} giving up after 2
		
		try
			do shell script "rmdir /Volumes/share"
		end try
		try
			do shell script "mkdir /Volumes/share"
		end try
		try
			do shell script smb_mount & "//" & username & ":" & pass & "@frodo.brentwood.bc.ca/share /Volumes/share"
		on error
			set errorBool to true
		end try
		if errorBool is true then
			collectCredentials(true)
			set errorBool to false
		else
			set finishedBool to true
		end if
	end repeat
end mountDrives
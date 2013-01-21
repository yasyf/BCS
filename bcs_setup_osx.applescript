
activate

display dialog "Welcome to the Brentwood College School Student Computer Setup. This Script will map your network drive and install the school printers. Click OK to proceed"

activate

display dialog "Please enter your BCS username" default answer ""
set the username to the text returned of the result

activate

display dialog "Please enter your BCS password" default answer "" with hidden answer
set the pass to the text returned of the result

on escapeTheString(theString)
	set chars to every character of theString
	repeat with i from 1 to length of chars
		if "!$&\"'*(){[|;<>?~` \\" contains (item i of chars as text) then
			set item i of chars to "\\" & (item i of chars as text)
		end if
	end repeat
	return every item of chars as string
end escapeTheString

set the passwd to escapeTheString(pass)

activate

property userpassword : ""
if userpassword is "" then
	display dialog "Please enter your COMPUTER password:" default answer "" with hidden answer
	set userpassword to text returned of result
	-- The repeat section below is an optional error checking routine to ensure the password is valid
	set the_password to "Undefined"
	repeat until the_password is "Correct"
		try
			set theFinderPID to do shell script "ps -axww | /usr/bin/grep '[/]Finder'| awk '{print $1}' | head -1"
			do shell script "renice 1 " & theFinderPID password userpassword with administrator privileges
			do shell script "renice 0 " & theFinderPID password userpassword with administrator privileges
			set the_password to "Correct"
		on error
			display dialog "Sorry, the password entered was not correct. Please try again:" default answer ""
			set userpassword to text returned of result
		end try
	end repeat
end if

activate

set printers to (choose from list {"alex", "allard", "ellis", "HopeHouse", "mackenzie", "privett", "rogers", "whittall"} with prompt "Which House Are You In?")

set smb_mount to "mount -t smbfs "

activate
display dialog "Mapping home drive" buttons {"Cancel"} giving up after 5

try
	do shell script "rmdir /Volumes/" & username
end try
try
	do shell script "mkdir /Volumes/" & username
end try
try
	do shell script smb_mount & "//" & username & ":" & passwd & "@frodo.brentwood.bc.ca/" & username & "$ /Volumes/" & username
end try

activate
display dialog "Mapping share drive" buttons {"Cancel"} giving up after 5

try
	do shell script "rmdir /Volumes/share"
end try
try
	do shell script "mkdir /Volumes/share"
end try
try
	do shell script smb_mount & "//" & username & ":" & passwd & "@frodo.brentwood.bc.ca/share /Volumes/share"
end try

activate
display dialog "Creating Desktop Shortcuts" buttons {"Cancel"} giving up after 5

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
display dialog "Installing Print Software" buttons {"Cancel"} giving up after 5

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
	do shell script "rmdir /Volumes/setup"
end try

try
	do shell script "mkdir /Volumes/setup"
end try

activate
try
	do shell script smb_mount & "//setup:setup@bombur.brentwood.bc.ca/setup$ /Volumes/setup"
	
	display dialog "Installing Printer: Ross" buttons {"Cancel"} giving up after 5
	
	do shell script "lpadmin -p rossprinter -E -v lpd://gazug.brentwood.bc.ca/rossprinter -P /Volumes/setup/Ricohmp4501ps.ppd"
	
	display dialog "Installing Printer: Crooks" buttons {"Cancel"} giving up after 5
	
	do shell script "lpadmin -p Crooks -E -v lpd://gazug.brentwood.bc.ca/Crooks -P /Volumes/setup/RicohMP_C4000.ppd"
	
	if printers is not "" then
		
		try
			do shell script "sudo installer -pkg /Volumes/setup/gutenprint.mpkg -target /" password userpassword with administrator privileges
		end try
		
		display dialog "Installing Printer: " & printers buttons {"Cancel"} giving up after 5
		
		do shell script "lpadmin -p " & printers & " -E -v lpd://gazug.brentwood.bc.ca/" & printers & " -m \"gutenprint.5.2://pcl-g_6/expert Generic PCL 6/PCL XL Printer - CUPS+Gutenprint v5.2.9\""
	end if
	
	do shell script "umount /Volumes/setup"
end try

display dialog "Setup Complete!" buttons {"Ok"} default button 1
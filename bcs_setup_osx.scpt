FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 username    m        � 	 	     
  
 j    �� �� 0 pass    m       �          j    �� �� 0 computerpass    m       �          l     ��������  ��  ��        l     ��  ��     decode credtentials     �   & d e c o d e   c r e d t e n t i a l s      l     ����  r         I     
��  ���� 	0 rot13      !�� ! o    ���� 0 username  ��  ��    o      ���� 0 username  ��  ��     " # " l   ! $���� $ r    ! % & % I    �� '���� 	0 rot13   '  (�� ( o    ���� 0 pass  ��  ��   & o      ���� 0 pass  ��  ��   #  ) * ) l  " 2 +���� + r   " 2 , - , I   " ,�� .���� 	0 rot13   .  /�� / o   # (���� 0 computerpass  ��  ��   - o      ���� 0 computerpass  ��  ��   *  0 1 0 l     ��������  ��  ��   1  2 3 2 l  3 8 4���� 4 I  3 8������
�� .miscactvnull��� ��� null��  ��  ��  ��   3  5 6 5 l  9 > 7���� 7 I  9 >�� 8��
�� .sysodlogaskr        TEXT 8 m   9 : 9 9 � : :: W e l c o m e   t o   t h e   B r e n t w o o d   C o l l e g e   S c h o o l   S t u d e n t   C o m p u t e r   S e t u p .   T h i s   S c r i p t   w i l l   m a p   y o u r   n e t w o r k   d r i v e   a n d   i n s t a l l   t h e   s c h o o l   p r i n t e r s .   C l i c k   O K   t o   p r o c e e d .��  ��  ��   6  ; < ; l     ��������  ��  ��   <  = > = l  ? D ?���� ? I  ? D������
�� .miscactvnull��� ��� null��  ��  ��  ��   >  @ A @ l  E } B���� B Z   E } C D���� C G   E p E F E G   E d G H G G   E X I J I =  E L K L K o   E J���� 0 username   L m   J K��
�� 
null J =  O V M N M o   O T���� 0 pass   N m   T U��
�� 
null H =  [ b O P O o   [ `���� 0 username   P m   ` a Q Q � R R   F =  g n S T S o   g l���� 0 pass   T m   l m U U � V V   D I   s y�� W���� (0 collectcredentials collectCredentials W  X�� X m   t u��
�� boovfals��  ��  ��  ��  ��  ��   A  Y Z Y l     ��������  ��  ��   Z  [ \ [ l  ~. ]���� ] Z   ~. ^ _���� ^ G   ~ � ` a ` =  ~ � b c b o   ~ ����� 0 computerpass   c m   � � d d � e e   a =  � � f g f o   � ����� 0 computerpass   g m   � ���
�� 
null _ k   �* h h  i j i I  � ��� k l
�� .sysodlogaskr        TEXT k m   � � m m � n n H P l e a s e   e n t e r   y o u r   C O M P U T E R   p a s s w o r d : l �� o p
�� 
dtxt o m   � � q q � r r   p �� s��
�� 
htxt s m   � ���
�� boovtrue��   j  t u t r   � � v w v n   � � x y x 1   � ���
�� 
ttxt y 1   � ���
�� 
rslt w o      ���� 0 computerpass   u  z { z l  � ��� | }��   | e _ The repeat section below is an optional error checking routine to ensure the password is valid    } � ~ ~ �   T h e   r e p e a t   s e c t i o n   b e l o w   i s   a n   o p t i o n a l   e r r o r   c h e c k i n g   r o u t i n e   t o   e n s u r e   t h e   p a s s w o r d   i s   v a l i d {   �  r   � � � � � m   � � � � � � �  I n c o r r e c t � o      ���� 0 	pass_stat   �  ��� � W   �* � � � Q   �% � � � � k   � � �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � p s   - a x w w   |   / u s r / b i n / g r e p   ' [ / ] F i n d e r ' |   a w k   ' { p r i n t   $ 1 } '   |   h e a d   - 1��   � o      ���� 0 thefinderpid theFinderPID �  � � � I  � ��� � �
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r e n i c e   1   � o   � ����� 0 thefinderpid theFinderPID � �� � �
�� 
RApw � o   � ����� 0 computerpass   � �� ���
�� 
badm � m   � ���
�� boovtrue��   �  � � � I  � ��� � �
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r e n i c e   0   � o   � ����� 0 thefinderpid theFinderPID � �� � �
�� 
RApw � o   � ����� 0 computerpass   � �� ���
�� 
badm � m   � ���
�� boovtrue��   �  ��� � r   � � � � m   �  � � � � �  C o r r e c t � o      ���� 0 	pass_stat  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k  % � �  � � � I �� � �
�� .sysodlogaskr        TEXT � m   � � � � � | S o r r y ,   t h e   p a s s w o r d   e n t e r e d   w a s   n o t   c o r r e c t .   P l e a s e   t r y   a g a i n : � �� � �
�� 
dtxt � m   � � � � �   � �� ���
�� 
htxt � m  ��
�� boovtrue��   �  ��� � r  % � � � n   � � � 1  ��
�� 
ttxt � 1  ��
�� 
rslt � o      ���� 0 computerpass  ��   � =  � � � � � o   � ����� 0 	pass_stat   � m   � � � � � � �  C o r r e c t��  ��  ��  ��  ��   \  � � � l     ��������  ��  ��   �  � � � l /4 ����� � I /4������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l 5_ ���� � r  5_ � � � l 5[ ��~�} � I 5[�| � �
�| .gtqpchltns    @   @ ns   � J  5Q � �  � � � m  58 � � � � �  A l e x �  � � � m  8; � � � � �  A l l a r d �  � � � m  ;> � � � � � 
 E l l i s �  � � � m  >A � � � � �  H o p e h o u s e �  � � � m  AD � � � � �  M a c k e n z i e �  � � � m  DG � � � � �  P r i v e t t �  � � � m  GJ � � � � �  R o g e r s �  ��{ � m  JM � � � � �  W h i t t a l l�{   � �z ��y
�z 
prmp � m  TW � � � � � . W h i c h   H o u s e   A r e   Y o u   I n ?�y  �~  �}   � o      �x�x 0 printers  ��  �   �  � � � l     �w�v�u�w  �v  �u   �  � � � l `e ��t�s � I  `e�r�q�p�r 0 mountdrives mountDrives�q  �p  �t  �s   �  � � � l     �o�n�m�o  �n  �m   �  � � � l fk ��l�k � I fk�j�i�h
�j .miscactvnull��� ��� null�i  �h  �l  �k   �  �  � l     �g�f�e�g  �f  �e     l l�d�c I l�b
�b .sysodlogaskr        TEXT m  lo � F C r e a t i n g   O p t i o n a l   D e s k t o p   S h o r t c u t s �a	
�a 
btns J  rw

 �` m  ru �  C a n c e l�`  	 �_�^
�_ 
givu m  z{�]�] �^  �d  �c    l     �\�[�Z�\  �[  �Z    l ���Y�X Q  ���W I ���V�U
�V .sysoexecTEXT���     TEXT b  �� b  �� m  �� �  r m   ~ / D e s k t o p / o  ���T�T 0 username   m  �� �  \ $�U   R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �W  �Y  �X     l     �P�O�N�P  �O  �N    !"! l ��#�M�L# Q  ��$%�K$ I ���J&�I
�J .sysoexecTEXT���     TEXT& m  ��'' �(( $ r m   ~ / D e s k t o p / s h a r e�I  % R      �H�G�F
�H .ascrerr ****      � ****�G  �F  �K  �M  �L  " )*) l     �E�D�C�E  �D  �C  * +,+ l ��-�B�A- Q  ��./�@. k  ��00 121 I ���?3�>
�? .sysoexecTEXT���     TEXT3 b  ��454 b  ��676 m  ��88 �99 � o s a s c r i p t   - e   ' t e l l   a p p l i c a t i o n   " F i n d e r "   t o   m a k e   n e w   a l i a s   f i l e   a t   d e s k t o p   t o   P O S I X   f i l e   " / V o l u m e s /7 o  ���=�= 0 username  5 m  ��:: �;;  " '�>  2 <�<< I ���;=�:
�; .sysoexecTEXT���     TEXT= m  ��>> �?? � o s a s c r i p t   - e   ' t e l l   a p p l i c a t i o n   " F i n d e r "   t o   m a k e   n e w   a l i a s   f i l e   a t   d e s k t o p   t o   P O S I X   f i l e   " / V o l u m e s / s h a r e " '�:  �<  / R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  �@  �B  �A  , @A@ l     �6�5�4�6  �5  �4  A BCB l     �3DE�3  D   Install Papercut   E �FF "   I n s t a l l   P a p e r c u tC GHG l     �2�1�0�2  �1  �0  H IJI l ��K�/�.K I ���-�,�+
�- .miscactvnull��� ��� null�,  �+  �/  �.  J LML l ��N�*�)N I ���(OP
�( .sysodlogaskr        TEXTO m  ��QQ �RR 2 I n s t a l l i n g   P r i n t   S o f t w a r eP �'ST
�' 
btnsS J  ��UU V�&V m  ��WW �XX  C a n c e l�&  T �%Y�$
�% 
givuY m  ���#�# �$  �*  �)  M Z[Z l     �"�!� �"  �!  �   [ \]\ l �^��^ Q  �_`�_ I ���a�
� .sysoexecTEXT���     TEXTa m  ��bb �cc . r m d i r   / V o l u m e s / p a p e r c u t�  ` R      ���
� .ascrerr ****      � ****�  �  �  �  �  ] ded l of��f Q  ogh�g k  	fii jkj I 	�l�
� .sysoexecTEXT���     TEXTl m  	mm �nn . m k d i r   / V o l u m e s / p a p e r c u t�  k opo I .�q�
� .sysoexecTEXT���     TEXTq b  *rsr b  &tut b  "vwv b  xyx b  z{z o  �� 0 	smb_mount  { m  || �}}  / /y o  �� 0 username  w m  !~~ �  :u o  "%�� 
0 passwd  s m  &)�� ��� j @ g a z u g . b r e n t w o o d . b c . c a / p c c l i e n t / m a c   / V o l u m e s / p a p e r c u t�  p ��� I /6���
� .sysoexecTEXT���     TEXT� m  /2�� ��� 4 m k d i r   ~ / D o w n l o a d s / p a p e r c u t�  � ��� I 7>���

� .sysoexecTEXT���     TEXT� m  7:�� ��� ^ c p   - R   / V o l u m e s / p a p e r c u t / *   ~ / D o w n l o a d s / p a p e r c u t /�
  � ��� I ?F�	��
�	 .sysoexecTEXT���     TEXT� m  ?B�� ��� � d i t t o   ~ / D o w n l o a d s / p a p e r c u t / P C C l i e n t . a p p   / A p p l i c a t i o n s / P C C l i e n t . a p p�  � ��� I GN���
� .sysoexecTEXT���     TEXT� m  GJ�� ��� 4 r m   - R   ~ / D o w n l o a d s / p a p e r c u t�  � ��� I OV���
� .sysoexecTEXT���     TEXT� m  OR�� ��� n f i n d   ' / A p p l i c a t i o n s / P C C l i e n t . a p p '   - e x e c   c h m o d   7 7 5   { }   \ ;�  � ��� I W^���
� .sysoexecTEXT���     TEXT� m  WZ�� ��� b r m   - f r   ~ / L i b r a r y / P r e f e r e n c e s / P C C l i e n t   2 > / d e v / n u l l�  � ��� I _f� ���
�  .sysoexecTEXT���     TEXT� m  _b�� ��� 0 u m o u n t   / V o l u m e s / p a p e r c u t��  �  h R      ������
�� .ascrerr ****      � ****��  ��  �  �  �  e ��� l     ��������  ��  ��  � ��� l p������� Q  p������ O  s���� I y������
�� .coredoscnull��� ��� ctxt� m  y|�� ��� � / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / M a c O S / J a v a A p p l i c a t i o n S t u b   b i z . p a p e r c u t . p c n g . c l i e n t . u i t . U s e r C l i e n t   - a��  � m  sv���                                                                                      @ alis    l  Macintosh HD               ��GpH+   +��Terminal.app                                                    +����g        ����  	                	Utilities     ���      ���     +�� +��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Q  ������� O  ����� Z ��������� = ����� l �������� I �������
�� .coredoexbool       obj � 4  �����
�� 
logi� m  ���� ���  P C C l i e n t��  ��  ��  � m  ����
�� boovfals� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
logi� ����
�� 
insh� n  �����  ;  ��� 2 ����
�� 
logi� �����
�� 
prdt� K  ���� ����
�� 
ppth� m  ���� ��� 4 / A p p l i c a t i o n s / P C C l i e n t . a p p� ����
�� 
hidn� m  ����
�� boovfals� ����
�� 
kind� m  ����
�� 
capp� �����
�� 
pnam� m  ���� ���  P C C l i e n t��  ��  ��  ��  � m  �����                                                                                  sevs  alis    �  Macintosh HD               ��GpH+   +��System Events.app                                               .����Y        ����  	                CoreServices    ���      ���     +�� +�� +��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l �.������ Q  �.����� k  �%�� ��� I ������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � c a t   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t   |   s e d   ' N ; $ ! P ; $ ! D ; $ d '   >   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p� ����
�� 
RApw� o  ������ 0 computerpass  � �����
�� 
badm� m  ����
�� boovtrue��  � ��� I �����
�� .sysoexecTEXT���     TEXT� m  ��� ��� � e c h o   ' < k e y > L S U I E l e m e n t < / k e y >   < t r u e / >   < / d i c t >   < / p l i s t > '   > >   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p� ����
�� 
RApw� o  	���� 0 computerpass  � �����
�� 
badm� m  ��
�� boovtrue��  � ���� I %����
�� .sysoexecTEXT���     TEXT� m  �� ��� � m v   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t� ����
�� 
RApw� o  ���� 0 computerpass  � �����
�� 
badm� m   !��
�� boovtrue��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l /B������ Q  /B����� I 29�����
�� .sysoexecTEXT���     TEXT� m  25   � ( r m d i r   / V o l u m e s / s e t u p��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  �  l     ��������  ��  ��    l CV���� Q  CV�� I FM��	��
�� .sysoexecTEXT���     TEXT	 m  FI

 � ( m k d i r   / V o l u m e s / s e t u p��   R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��    l     ��������  ��  ��    l W\���� I W\������
�� .miscactvnull��� ��� null��  ��  ��  ��    l ]���� Q  ]�� k  `	  I `k����
�� .sysoexecTEXT���     TEXT b  `g o  `c���� 0 	smb_mount   m  cf � t / / s e t u p : s e t u p @ b o m b u r . b r e n t w o o d . b c . c a / s e t u p $   / V o l u m e s / s e t u p��    l ll��������  ��  ��    !  I l��"#
�� .sysodlogaskr        TEXT" m  lo$$ �%% 0 I n s t a l l i n g   P r i n t e r :   R o s s# ��&'
�� 
btns& J  rw(( )��) m  ru** �++  C a n c e l��  ' ��,��
�� 
givu, m  z{���� ��  ! -.- l ����������  ��  ��  . /0/ I ����1��
�� .sysoexecTEXT���     TEXT1 m  ��22 �33 � l p a d m i n   - p   r o s s p r i n t e r   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a / r o s s p r i n t e r   - P   / V o l u m e s / s e t u p / R i c o h m p 4 5 0 1 p s . p p d��  0 454 l ����������  ��  ��  5 676 I ����89
�� .sysodlogaskr        TEXT8 m  ��:: �;; 4 I n s t a l l i n g   P r i n t e r :   C r o o k s9 ��<=
�� 
btns< J  ��>> ?��? m  ��@@ �AA  C a n c e l��  = �B�~
� 
givuB m  ���}�} �~  7 CDC l ���|�{�z�|  �{  �z  D EFE I ���yG�x
�y .sysoexecTEXT���     TEXTG m  ��HH �II � l p a d m i n   - p   C r o o k s   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a / C r o o k s   - P   / V o l u m e s / s e t u p / R i c o h M P _ C 4 0 0 0 . p p d�x  F JKJ l ���w�v�u�w  �v  �u  K LML Z  �NO�t�sN > ��PQP o  ���r�r 0 printers  Q m  ��RR �SS  O k  ��TT UVU l ���q�p�o�q  �p  �o  V WXW Q  ��YZ�nY I ���m[\
�m .sysoexecTEXT���     TEXT[ m  ��]] �^^ x s u d o   i n s t a l l e r   - p k g   / V o l u m e s / s e t u p / g u t e n p r i n t . m p k g   - t a r g e t   /\ �l_`
�l 
RApw_ o  ���k�k 0 computerpass  ` �ja�i
�j 
badma m  ���h
�h boovtrue�i  Z R      �g�f�e
�g .ascrerr ****      � ****�f  �e  �n  X bcb l ���d�c�b�d  �c  �b  c ded I ���afg
�a .sysodlogaskr        TEXTf b  ��hih m  ��jj �kk ( I n s t a l l i n g   P r i n t e r :  i o  ���`�` 0 printers  g �_lm
�_ 
btnsl J  ��nn o�^o m  ��pp �qq  C a n c e l�^  m �]r�\
�] 
givur m  ���[�[ �\  e sts l ���Z�Y�X�Z  �Y  �X  t u�Wu I ���Vv�U
�V .sysoexecTEXT���     TEXTv b  ��wxw b  ��yzy b  ��{|{ b  ��}~} m  �� ���  l p a d m i n   - p  ~ o  ���T�T 0 printers  | m  ���� ��� F   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a /z o  ���S�S 0 printers  x m  ���� ��� �   - m   " g u t e n p r i n t . 5 . 2 : / / p c l - g _ 6 / e x p e r t   G e n e r i c   P C L   6 / P C L   X L   P r i n t e r   -   C U P S + G u t e n p r i n t   v 5 . 2 . 9 "�U  �W  �t  �s  M ��� l �R�Q�P�R  �Q  �P  � ��O� I 	�N��M
�N .sysoexecTEXT���     TEXT� m  �� ��� * u m o u n t   / V o l u m e s / s e t u p�M  �O   R      �L�K�J
�L .ascrerr ****      � ****�K  �J  ��  ��  ��   ��� l     �I�H�G�I  �H  �G  � ��� l     �F���F  �  encode credtentials   � ��� & e n c o d e   c r e d t e n t i a l s� ��� l #��E�D� r  #��� I  �C��B�C 	0 rot13  � ��A� o  �@�@ 0 username  �A  �B  � o      �?�? 0 username  �E  �D  � ��� l $4��>�=� r  $4��� I  $.�<��;�< 	0 rot13  � ��:� o  %*�9�9 0 pass  �:  �;  � o      �8�8 0 pass  �>  �=  � ��� l 5E��7�6� r  5E��� I  5?�5��4�5 	0 rot13  � ��3� o  6;�2�2 0 computerpass  �3  �4  � o      �1�1 0 computerpass  �7  �6  � ��� l     �0�/�.�0  �/  �.  � ��� l FY��-�,� I FY�+��
�+ .sysodlogaskr        TEXT� m  FI�� ���  S e t u p   C o m p l e t e !� �*��
�* 
btns� J  LQ�� ��)� m  LO�� ���  O k�)  � �(��'
�( 
dflt� m  TU�&�& �'  �-  �,  � ��� l     �%�$�#�%  �$  �#  � ��� l     �"�!� �"  �!  �   � ��� i   	 ��� I      ���� (0 collectcredentials collectCredentials� ��� o      �� 0 	incorrect  �  �  � k     M�� ��� I    ���
� .miscactvnull��� ��� null�  �  � ��� Z    ����� =   	��� o    �� 0 	incorrect  � m    �
� boovtrue� I   ���
� .sysodlogaskr        TEXT� m    �� ��� | Y o u r   B C S   u s e r n a m e   o r   p a s s w o r d   w a s   i n c o r r e c t .   P l e a s e   t r y   a g a i n .�  �  �  � ��� I   ���
� .sysodlogaskr        TEXT� m    �� ��� V P l e a s e   e n t e r   y o u r   B C S   u s e r n a m e   ( f i r s t . l a s t )� ���
� 
dtxt� m    �� ���  �  � ��� r    ,��� I    &���� "0 escapethestring escapeTheString� ��� l   "���� n    "��� 1     "�

�
 
ttxt� l    ��	�� 1     �
� 
rslt�	  �  �  �  �  �  � o      �� 0 username  � ��� l  - -����  �  �  � ��� I  - 2��� 
� .miscactvnull��� ��� null�  �   � ��� l  3 3��������  ��  ��  � ��� I  3 <����
�� .sysodlogaskr        TEXT� m   3 4�� ��� > P l e a s e   e n t e r   y o u r   B C S   p a s s w o r d .� ����
�� 
dtxt� m   5 6�� ���  � �����
�� 
htxt� m   7 8��
�� boovtrue��  � ��� r   = K��� I   = E������� "0 escapethestring escapeTheString� ���� l  > A������ n   > A��� 1   ? A��
�� 
ttxt� l  > ?������ 1   > ?��
�� 
rslt��  ��  ��  ��  ��  ��  � o      ���� 0 pass  � ���� l  L L��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i       I      ������ "0 escapethestring escapeTheString �� o      ���� 0 	thestring 	theString��  ��   k     ;  r      n     	
	 2    ��
�� 
cha 
 o     ���� 0 	thestring 	theString o      ���� 	0 chars    Y    4���� Z    /���� E     m     � & ! $ & " ' * ( ) { [ | ; < > ? ~ `   \ l   ���� c     n     4    ��
�� 
cobj o    ���� 0 i   o    ���� 	0 chars   m    ��
�� 
ctxt��  ��   r    + b    & m       �!!  \ l   %"����" c    %#$# n    #%&% 4     #��'
�� 
cobj' o   ! "���� 0 i  & o     ���� 	0 chars  $ m   # $��
�� 
ctxt��  ��   n      ()( 4   ' *��*
�� 
cobj* o   ( )���� 0 i  ) o   & '���� 	0 chars  ��  ��  �� 0 i   m   	 
����  n   
 +,+ 1    ��
�� 
leng, o   
 ���� 	0 chars  ��   -��- L   5 ;.. c   5 :/0/ n   5 8121 2   6 8��
�� 
cobj2 o   5 6���� 	0 chars  0 m   8 9��
�� 
TEXT��  � 343 l     ��������  ��  ��  4 565 i    787 I      ��9���� 	0 rot13  9 :��: o      ���� 0 
textstring 
textString��  ��  8 k     �;; <=< q      >> ������ 0 outchars outChars��  = ?@? r     ABA J     ����  B o      ���� 0 outchars outChars@ CDC X    zE��FE k    uGG HIH Z    pJKL��J G    2MNM l   "O����O F    "PQP @    RSR o    ���� 0 ch  S m    TT �UU  aQ B     VWV o    ���� 0 ch  W m    XX �YY  m��  ��  N l  % 0Z����Z F   % 0[\[ @   % (]^] o   % &���� 0 ch  ^ m   & '__ �``  A\ B   + .aba o   + ,���� 0 ch  b m   , -cc �dd  M��  ��  K r   5 @efe 5   5 >��g��
�� 
cha g l  7 <h����h [   7 <iji l  7 :k����k n   7 :lml 1   8 :��
�� 
ID  m o   7 8���� 0 ch  ��  ��  j m   : ;���� ��  ��  
�� kfrmID  f o      ���� 0 ch  L non G   C ^pqp l  C Nr����r F   C Nsts @   C Fuvu o   C D���� 0 ch  v m   D Eww �xx  nt B   I Lyzy o   I J���� 0 ch  z m   J K{{ �||  z��  ��  q l  Q \}����} F   Q \~~ @   Q T��� o   Q R���� 0 ch  � m   R S�� ���  N B   W Z��� o   W X���� 0 ch  � m   X Y�� ���  Z��  ��  o ���� r   a l��� 5   a j�����
�� 
cha � l  c h������ \   c h��� l  c f������ n   c f��� 1   d f��
�� 
ID  � o   c d���� 0 ch  ��  ��  � m   f g���� ��  ��  
�� kfrmID  � o      ���� 0 ch  ��  ��  I ���� r   q u��� o   q r���� 0 ch  � n      ���  ;   s t� o   r s���� 0 outchars outChars��  �� 0 ch  F l   ������ n    ��� 2  	 ��
�� 
cha � o    	���� 0 
textstring 
textString��  ��  D ���� L   { ��� c   { ���� o   { |���� 0 outchars outChars� m   | ��
�� 
ctxt��  6 ��� l     ��������  ��  ��  � ���� i    ��� I      �������� 0 mountdrives mountDrives��  ��  � k    �� ��� r     ��� m     �� ���  m o u n t   - t   s m b f s  � o      ���� 0 	smb_mount  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 	errorbool 	errorBool� ��� r    ��� m    	�
� boovfals� o      �~�~ 0 finishedbool finishedBool� ��}� W   ��� k   �� ��� I   �|�{�z
�| .miscactvnull��� ��� null�{  �z  � ��� I   %�y��
�y .sysodlogaskr        TEXT� m    �� ��� $ M a p p i n g   h o m e   d r i v e� �x��
�x 
btns� J    �� ��w� m    �� ���  C a n c e l�w  � �v��u
�v 
givu� m     !�t�t �u  � ��� l  & &�s�r�q�s  �r  �q  � ��� Q   & =���p� I  ) 4�o��n
�o .sysoexecTEXT���     TEXT� b   ) 0��� m   ) *�� ���  r m d i r   / V o l u m e s /� o   * /�m�m 0 username  �n  � R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �p  � ��� Q   > W���i� k   A N�� ��� I  A L�h��g
�h .sysoexecTEXT���     TEXT� b   A H��� m   A B�� ���  m k d i r   / V o l u m e s /� o   B G�f�f 0 username  �g  � ��e� l  M M�d�c�b�d  �c  �b  �e  � R      �a�`�_
�a .ascrerr ****      � ****�`  �_  �i  � ��� Q   X ����� I  [ ��^��]
�^ .sysoexecTEXT���     TEXT� b   [ ~��� b   [ x��� b   [ t��� b   [ n��� b   [ l��� b   [ f��� b   [ d��� b   [ ^��� o   [ \�\�\ 0 	smb_mount  � m   \ ]�� ���  / /� o   ^ c�[�[ 0 username  � m   d e�� ���  :� o   f k�Z�Z 0 pass  � m   l m�� ��� . @ f r o d o . b r e n t w o o d . b c . c a /� o   n s�Y�Y 0 username  � m   t w�� ���  $   / V o l u m e s /� o   x }�X�X 0 username  �]  � R      �W�V�U
�W .ascrerr ****      � ****�V  �U  � r   � ���� m   � ��T
�T boovtrue� o      �S�S 0 	errorbool 	errorBool� ��� l  � ��R�Q�P�R  �Q  �P  � � � I  � ��O�N�M
�O .miscactvnull��� ��� null�N  �M     I  � ��L
�L .sysodlogaskr        TEXT m   � � � & M a p p i n g   s h a r e   d r i v e �K
�K 
btns J   � �		 
�J
 m   � � �  C a n c e l�J   �I�H
�I 
givu m   � ��G�G �H    l  � ��F�E�D�F  �E  �D    Q   � ��C I  � ��B�A
�B .sysoexecTEXT���     TEXT m   � � � ( r m d i r   / V o l u m e s / s h a r e�A   R      �@�?�>
�@ .ascrerr ****      � ****�?  �>  �C    Q   � ��= I  � ��<�;
�< .sysoexecTEXT���     TEXT m   � � � ( m k d i r   / V o l u m e s / s h a r e�;   R      �:�9�8
�: .ascrerr ****      � ****�9  �8  �=    Q   � � !"  I  � ��7#�6
�7 .sysoexecTEXT���     TEXT# b   � �$%$ b   � �&'& b   � �()( b   � �*+* b   � �,-, o   � ��5�5 0 	smb_mount  - m   � �.. �//  / /+ o   � ��4�4 0 username  ) m   � �00 �11  :' o   � ��3�3 0 pass  % m   � �22 �33 V @ f r o d o . b r e n t w o o d . b c . c a / s h a r e   / V o l u m e s / s h a r e�6  ! R      �2�1�0
�2 .ascrerr ****      � ****�1  �0  " r   � �454 m   � ��/
�/ boovtrue5 o      �.�. 0 	errorbool 	errorBool 6�-6 Z   �78�,97 =  � �:;: o   � ��+�+ 0 	errorbool 	errorBool; m   � ��*
�* boovtrue8 k   �<< =>= I   ��)?�(�) (0 collectcredentials collectCredentials? @�'@ m   � �&
�& boovtrue�'  �(  > A�%A r  BCB m  �$
�$ boovfalsC o      �#�# 0 	errorbool 	errorBool�%  �,  9 r  DED m  �"
�" boovtrueE o      �!�! 0 finishedbool finishedBool�-  � =   FGF o    � �  0 finishedbool finishedBoolG m    �
� boovtrue�}  ��       
�H   IJKLM�  H ��������� 0 username  � 0 pass  � 0 computerpass  � (0 collectcredentials collectCredentials� "0 escapethestring escapeTheString� 	0 rot13  � 0 mountdrives mountDrives
� .aevtoappnull  �   � ****I ����NO�� (0 collectcredentials collectCredentials� �P� P  �� 0 	incorrect  �  N �� 0 	incorrect  O ��������
�	����
� .miscactvnull��� ��� null
� .sysodlogaskr        TEXT
� 
dtxt
� 
rslt
�
 
ttxt�	 "0 escapethestring escapeTheString
� 
htxt� � N*j  O�e  
�j Y hO���l O*��,k+ Ec   O*j  O����e� O*��,k+ Ec  OPJ ���QR�� "0 escapethestring escapeTheString� �S� S  �� 0 	thestring 	theString�  Q � �����  0 	thestring 	theString�� 	0 chars  �� 0 i  R �������� ��
�� 
cha 
�� 
leng
�� 
cobj
�� 
ctxt
�� 
TEXT� <��-E�O -k��,Ekh ��/�& ��/�&%��/FY h[OY��O��-�&K ��8����TU���� 	0 rot13  �� ��V�� V  ���� 0 
textstring 
textString��  T �������� 0 
textstring 
textString�� 0 outchars outChars�� 0 ch  U ��������TX��_c������w{����
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
bool
�� 
ID  �� 
�� kfrmID  
�� 
ctxt�� �jvE�O t��-[��l kh ��	 ���&
 ��	 ���&�& *��,��0E�Y /��	 ���&
 ��	 ���&�& *��,��0E�Y hO��6F[OY��O�a &L �������WX���� 0 mountdrives mountDrives��  ��  W �������� 0 	smb_mount  �� 0 	errorbool 	errorBool�� 0 finishedbool finishedBoolX �������������������������.02��
�� .miscactvnull��� ��� null
�� 
btns
�� 
givu�� 
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT��  ��  �� (0 collectcredentials collectCredentials���E�OfE�OfE�Oh�e *j O���kv�l� O �b   %j 	W X 
 hO �b   %j 	OPW X 
 hO ,��%b   %�%b  %�%b   %a %b   %j 	W 
X 
 eE�O*j Oa �a kv�l� O a j 	W X 
 hO a j 	W X 
 hO "�a %b   %a %b  %a %j 	W 
X 
 eE�O�e  *ek+ OfE�Y eE�[OY��M ��Y����Z[��
�� .aevtoappnull  �   � ****Y k    Y\\  ]]  "^^  )__  2``  5aa  =bb  @cc  [dd  �ee  �ff  �gg  �hh ii jj !kk +ll Imm Lnn \oo dpp �qq �rr �ss �tt uu vv ww �xx �yy �zz �����  ��  ��  Z  [ r���� 9������ Q U�� d m�� q�������� ��� � ����� ����� � ����� � � � � � � � � � ����� �����������'8:>QWbm��|~��������������������������������������������� 
$*2:@HR]jp��������� 	0 rot13  
�� .miscactvnull��� ��� null
�� .sysodlogaskr        TEXT
�� 
null
�� 
bool�� (0 collectcredentials collectCredentials
�� 
dtxt
�� 
htxt�� 
�� 
rslt
�� 
ttxt�� 0 	pass_stat  
�� .sysoexecTEXT���     TEXT�� 0 thefinderpid theFinderPID
�� 
RApw
�� 
badm��  ��  �� 
�� 
prmp
�� .gtqpchltns    @   @ ns  �� 0 printers  �� 0 mountdrives mountDrives
�� 
btns
�� 
givu�� 0 	smb_mount  �� 
0 passwd  
�� .coredoscnull��� ��� ctxt
�� 
logi
�� .coredoexbool       obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
ppth
�� 
hidn
�� 
kind
�� 
capp
�� 
pnam�� 
�� .corecrel****      � null
�� 
dflt��Z*b   k+  Ec   O*b  k+  Ec  O*b  k+  Ec  O*j O�j O*j Ob   � 
 b  � �&
 b   � �&
 b  � �& *fk+ Y hOb  � 
 b  � �& �����e� O�a ,Ec  Oa E` O wh_ a   Ha j E` Oa _ %a b  a e� Oa _ %a b  a e� Oa E` W  X  a �a �e� O�a ,Ec  [OY��Y hO*j Oa  a !a "a #a $a %a &a 'a (va )a *l +E` ,O*j+ -O*j Oa .a /a 0kva 1l� O a 2b   %a 3%j W X  hO a 4j W X  hO a 5b   %a 6%j Oa 7j W X  hO*j Oa 8a /a 9kva 1l� O a :j W X  hO ba ;j O_ <a =%b   %a >%_ ?%a @%j Oa Aj Oa Bj Oa Cj Oa Dj Oa Ej Oa Fj Oa Gj W X  hO a H 	a Ij JUW X  hO Ta K J*a La M/j Nf  8*a Oa La P*a L-6a Qa Ra Sa Tfa Ua Va Wa Xa (a Y ZY hUW X  hO @a [a b  a e� Oa \a b  a e� Oa ]a b  a e� W X  hO a ^j W X  hO a _j W X  hO*j O �_ <a `%j Oa aa /a bkva 1l� Oa cj Oa da /a ekva 1l� Oa fj O_ ,a g T a ha b  a e� W X  hOa i_ ,%a /a jkva 1l� Oa k_ ,%a l%_ ,%a m%j Y hOa nj W X  hO*b   k+  Ec   O*b  k+  Ec  O*b  k+  Ec  Oa oa /a pkva qk�  ascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 username    m        � 	 	     
  
 j    �� �� 0 pass    m       �          j    �� �� 0 computerpass    m       �          l     ��������  ��  ��        l     ��������  ��  ��        l     ����  I    ������
�� .miscactvnull��� ��� null��  ��  ��  ��        l    ����  I   �� ��
�� .sysodlogaskr        TEXT  m       �    : W e l c o m e   t o   t h e   B r e n t w o o d   C o l l e g e   S c h o o l   S t u d e n t   C o m p u t e r   S e t u p .   T h i s   S c r i p t   w i l l   m a p   y o u r   n e t w o r k   d r i v e   a n d   i n s t a l l   t h e   s c h o o l   p r i n t e r s .   C l i c k   O K   t o   p r o c e e d .��  ��  ��     ! " ! l     ��������  ��  ��   "  # $ # l    %���� % I   ������
�� .miscactvnull��� ��� null��  ��  ��  ��   $  & ' & l   J (���� ( Z    J ) *���� ) G    = + , + G    1 - . - G    % / 0 / =    1 2 1 o    ���� 0 username   2 m    ��
�� 
null 0 =   # 3 4 3 o    !���� 0 pass   4 m   ! "��
�� 
null . =  ( / 5 6 5 o   ( -���� 0 username   6 m   - . 7 7 � 8 8   , =  4 ; 9 : 9 o   4 9���� 0 pass   : m   9 : ; ; � < <   * I   @ F�� =���� (0 collectcredentials collectCredentials =  >�� > m   A B��
�� boovfals��  ��  ��  ��  ��  ��   '  ? @ ? l     ��������  ��  ��   @  A B A l  K � C���� C Z   K � D E���� D G   K ^ F G F =  K R H I H o   K P���� 0 computerpass   I m   P Q J J � K K   G =  U \ L M L o   U Z���� 0 computerpass   M m   Z [��
�� 
null E k   a � N N  O P O I  a j�� Q R
�� .sysodlogaskr        TEXT Q m   a b S S � T T H P l e a s e   e n t e r   y o u r   C O M P U T E R   p a s s w o r d : R �� U V
�� 
dtxt U m   c d W W � X X   V �� Y��
�� 
htxt Y m   e f��
�� boovtrue��   P  Z [ Z r   k t \ ] \ n   k n ^ _ ^ 1   l n��
�� 
ttxt _ 1   k l��
�� 
rslt ] o      ���� 0 computerpass   [  ` a ` l  u u�� b c��   b e _ The repeat section below is an optional error checking routine to ensure the password is valid    c � d d �   T h e   r e p e a t   s e c t i o n   b e l o w   i s   a n   o p t i o n a l   e r r o r   c h e c k i n g   r o u t i n e   t o   e n s u r e   t h e   p a s s w o r d   i s   v a l i d a  e f e r   u | g h g m   u x i i � j j  I n c o r r e c t h o      ���� 0 	pass_stat   f  k�� k W   } � l m l Q   � � n o p n k   � � q q  r s r r   � � t u t I  � ��� v��
�� .sysoexecTEXT���     TEXT v m   � � w w � x x � p s   - a x w w   |   / u s r / b i n / g r e p   ' [ / ] F i n d e r ' |   a w k   ' { p r i n t   $ 1 } '   |   h e a d   - 1��   u o      ���� 0 thefinderpid theFinderPID s  y z y I  � ��� { |
�� .sysoexecTEXT���     TEXT { b   � � } ~ } m   � �   � � �  r e n i c e   1   ~ o   � ����� 0 thefinderpid theFinderPID | �� � �
�� 
RApw � o   � ����� 0 computerpass   � �� ���
�� 
badm � m   � ���
�� boovtrue��   z  � � � I  � ��� � �
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r e n i c e   0   � o   � ����� 0 thefinderpid theFinderPID � �� � �
�� 
RApw � o   � ����� 0 computerpass   � �� ���
�� 
badm � m   � ���
�� boovtrue��   �  ��� � r   � � � � � m   � � � � � � �  C o r r e c t � o      ���� 0 	pass_stat  ��   o R      ������
�� .ascrerr ****      � ****��  ��   p k   � � � �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � | S o r r y ,   t h e   p a s s w o r d   e n t e r e d   w a s   n o t   c o r r e c t .   P l e a s e   t r y   a g a i n : � �� � �
�� 
dtxt � m   � � � � � � �   � �� ���
�� 
htxt � m   � ���
�� boovtrue��   �  ��� � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � 1   � ���
�� 
rslt � o      ���� 0 computerpass  ��   m =  � � � � � o   � ����� 0 	pass_stat   � m   � � � � � � �  C o r r e c t��  ��  ��  ��  ��   B  � � � l     ��������  ��  ��   �  � � � l  � � ����� � I  � �������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  �( ����� � r   �( � � � l  �$ ����� � I  �$�� � �
�� .gtqpchltns    @   @ ns   � J   � � �  � � � m   � � � � � �  a l e x �  � � � m   � � � � �  a l l a r d �  � � � m   � � � � � 
 e l l i s �  � � � m  
 � � � � �  H o p e H o u s e �  � � � m  
 � � � � �  m a c k e n z i e �  � � � m   � � � � �  p r i v e t t �  � � � m   � � � � �  r o g e r s �  ��� � m   � � � � �  w h i t t a l l��   � �� ���
�� 
prmp � m    � � � � � . W h i c h   H o u s e   A r e   Y o u   I n ?��  ��  ��   � o      ���� 0 printers  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l ). ����� � I  ).�������� 0 mountdrives mountDrives��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l /4 ����� � I /4����~
�� .miscactvnull��� ��� null�  �~  ��  ��   �  � � � l     �}�|�{�}  �|  �{   �  � � � l 5J ��z�y � I 5J�x � �
�x .sysodlogaskr        TEXT � m  58 � � � � � F C r e a t i n g   O p t i o n a l   D e s k t o p   S h o r t c u t s � �w � �
�w 
btns � J  ;@ � �  ��v � m  ;> � � � � �  C a n c e l�v   � �u ��t
�u 
givu � m  CF�s�s �t  �z  �y   �  � � � l     �r�q�p�r  �q  �p   �  � � � l Kh ��o�n � Q  Kh � ��m � I N_�l ��k
�l .sysoexecTEXT���     TEXT � b  N[ � � � b  NW �  � m  NQ �  r m   ~ / D e s k t o p /  o  QV�j�j 0 username   � m  WZ �  \ $�k   � R      �i�h�g
�i .ascrerr ****      � ****�h  �g  �m  �o  �n   �  l     �f�e�d�f  �e  �d    l i|	�c�b	 Q  i|
�a
 I ls�`�_
�` .sysoexecTEXT���     TEXT m  lo � $ r m   ~ / D e s k t o p / s h a r e�_   R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  �a  �c  �b    l     �[�Z�Y�[  �Z  �Y    l }��X�W Q  }��V k  ��  I ���U�T
�U .sysoexecTEXT���     TEXT b  �� b  �� m  �� � � o s a s c r i p t   - e   ' t e l l   a p p l i c a t i o n   " F i n d e r "   t o   m a k e   n e w   a l i a s   f i l e   a t   d e s k t o p   t o   P O S I X   f i l e   " / V o l u m e s / o  ���S�S 0 username   m  ��   �!!  " '�T   "�R" I ���Q#�P
�Q .sysoexecTEXT���     TEXT# m  ��$$ �%% � o s a s c r i p t   - e   ' t e l l   a p p l i c a t i o n   " F i n d e r "   t o   m a k e   n e w   a l i a s   f i l e   a t   d e s k t o p   t o   P O S I X   f i l e   " / V o l u m e s / s h a r e " '�P  �R   R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �V  �X  �W   &'& l     �L�K�J�L  �K  �J  ' ()( l     �I*+�I  *   Install Papercut   + �,, "   I n s t a l l   P a p e r c u t) -.- l     �H�G�F�H  �G  �F  . /0/ l ��1�E�D1 I ���C�B�A
�C .miscactvnull��� ��� null�B  �A  �E  �D  0 232 l ��4�@�?4 I ���>56
�> .sysodlogaskr        TEXT5 m  ��77 �88 2 I n s t a l l i n g   P r i n t   S o f t w a r e6 �=9:
�= 
btns9 J  ��;; <�<< m  ��== �>>  C a n c e l�<  : �;?�:
�; 
givu? m  ���9�9 �:  �@  �?  3 @A@ l     �8�7�6�8  �7  �6  A BCB l ��D�5�4D Q  ��EF�3E I ���2G�1
�2 .sysoexecTEXT���     TEXTG m  ��HH �II . r m d i r   / V o l u m e s / p a p e r c u t�1  F R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  �3  �5  �4  C JKJ l �<L�-�,L Q  �<MN�+M k  �3OO PQP I ���*R�)
�* .sysoexecTEXT���     TEXTR m  ��SS �TT . m k d i r   / V o l u m e s / p a p e r c u t�)  Q UVU I ���(W�'
�( .sysoexecTEXT���     TEXTW b  ��XYX b  ��Z[Z b  ��\]\ b  ��^_^ b  ��`a` o  ���&�& 0 	smb_mount  a m  ��bb �cc  / /_ o  ���%�% 0 username  ] m  ��dd �ee  :[ o  ���$�$ 
0 passwd  Y m  ��ff �gg j @ g a z u g . b r e n t w o o d . b c . c a / p c c l i e n t / m a c   / V o l u m e s / p a p e r c u t�'  V hih I ��#j�"
�# .sysoexecTEXT���     TEXTj m  ��kk �ll 4 m k d i r   ~ / D o w n l o a d s / p a p e r c u t�"  i mnm I �!o� 
�! .sysoexecTEXT���     TEXTo m  pp �qq ^ c p   - R   / V o l u m e s / p a p e r c u t / *   ~ / D o w n l o a d s / p a p e r c u t /�   n rsr I �t�
� .sysoexecTEXT���     TEXTt m  uu �vv � d i t t o   ~ / D o w n l o a d s / p a p e r c u t / P C C l i e n t . a p p   / A p p l i c a t i o n s / P C C l i e n t . a p p�  s wxw I �y�
� .sysoexecTEXT���     TEXTy m  zz �{{ 4 r m   - R   ~ / D o w n l o a d s / p a p e r c u t�  x |}| I #�~�
� .sysoexecTEXT���     TEXT~ m   ��� n f i n d   ' / A p p l i c a t i o n s / P C C l i e n t . a p p '   - e x e c   c h m o d   7 7 5   { }   \ ;�  } ��� I $+���
� .sysoexecTEXT���     TEXT� m  $'�� ��� b r m   - f r   ~ / L i b r a r y / P r e f e r e n c e s / P C C l i e n t   2 > / d e v / n u l l�  � ��� I ,3���
� .sysoexecTEXT���     TEXT� m  ,/�� ��� 0 u m o u n t   / V o l u m e s / p a p e r c u t�  �  N R      ���
� .ascrerr ****      � ****�  �  �+  �-  �,  K ��� l     ����  �  �  � ��� l =W���� Q  =W���� O  @N��� I FM���

� .coredoscnull��� ��� ctxt� m  FI�� ��� � / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / M a c O S / J a v a A p p l i c a t i o n S t u b   b i z . p a p e r c u t . p c n g . c l i e n t . u i t . U s e r C l i e n t   - a�
  � m  @C���                                                                                      @ alis    l  Macintosh HD               ��GpH+   +��Terminal.app                                                    +����g        ����  	                	Utilities     ���      ���     +�� +��  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��  � R      �	��
�	 .ascrerr ****      � ****�  �  �  �  �  � ��� l     ����  �  �  � ��� l X����� Q  X����� O  [���� Z a���� ��� = ao��� l am������ I am�����
�� .coredoexbool       obj � 4  ai���
�� 
logi� m  eh�� ���  P C C l i e n t��  ��  ��  � m  mn��
�� boovfals� I r������
�� .corecrel****      � null��  � ����
�� 
kocl� m  vy��
�� 
logi� ����
�� 
insh� n  |����  ;  ��� 2 |���
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
pnam� m  ���� ���  P C C l i e n t��  ��  �   ��  � m  [^���                                                                                  sevs  alis    �  Macintosh HD               ��GpH+   +��System Events.app                                               .����Y        ����  	                CoreServices    ���      ���     +�� +�� +��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      ������
�� .ascrerr ****      � ****��  ��  �  �  �  � ��� l �������� Q  ������� k  ���� ��� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � c a t   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t   |   s e d   ' N ; $ ! P ; $ ! D ; $ d '   >   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p��  � ��� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � e c h o   ' < k e y > L S U I E l e m e n t < / k e y >   < t r u e / >   < / d i c t >   < / p l i s t > '   > >   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p��  � ���� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� � m v   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t . t m p   / A p p l i c a t i o n s / P C C l i e n t . a p p / C o n t e n t s / I n f o . p l i s t��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Q  ������� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� ( r m d i r   / V o l u m e s / s e t u p��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Q  ������� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� ( m k d i r   / V o l u m e s / s e t u p��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l  ������ I  ������
�� .miscactvnull��� ��� null��  ��  ��  ��  � ��� l ������� Q  ������ k  	��� ��� I 	�����
�� .sysoexecTEXT���     TEXT� b  	��� o  	���� 0 	smb_mount  � m  �� ��� t / / s e t u p : s e t u p @ b o m b u r . b r e n t w o o d . b c . c a / s e t u p $   / V o l u m e s / s e t u p��  � ��� l ��������  ��  ��  � ��� I *����
�� .sysodlogaskr        TEXT� m  �� ��� 0 I n s t a l l i n g   P r i n t e r :   R o s s� �� 
�� 
btns  J    �� m   �  C a n c e l��   ����
�� 
givu m  #&���� ��  �  l ++��������  ��  ��   	
	 I +2����
�� .sysoexecTEXT���     TEXT m  +. � � l p a d m i n   - p   r o s s p r i n t e r   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a / r o s s p r i n t e r   - P   / V o l u m e s / s e t u p / R i c o h m p 4 5 0 1 p s . p p d��  
  l 33��������  ��  ��    I 3H��
�� .sysodlogaskr        TEXT m  36 � 4 I n s t a l l i n g   P r i n t e r :   C r o o k s ��
�� 
btns J  9> �� m  9< �  C a n c e l��   ����
�� 
givu m  AD���� ��    l II��������  ��  ��     I IP��!��
�� .sysoexecTEXT���     TEXT! m  IL"" �## � l p a d m i n   - p   C r o o k s   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a / C r o o k s   - P   / V o l u m e s / s e t u p / R i c o h M P _ C 4 0 0 0 . p p d��    $%$ l QQ��������  ��  ��  % &'& Z  Q�()����( > QX*+* o  QT���� 0 printers  + m  TW,, �--  ) k  [�.. /0/ l [[��������  ��  ��  0 121 Q  [z34��3 I ^q��56
�� .sysoexecTEXT���     TEXT5 m  ^a77 �88 x s u d o   i n s t a l l e r   - p k g   / V o l u m e s / s e t u p / g u t e n p r i n t . m p k g   - t a r g e t   /6 ��9:
�� 
RApw9 o  di���� 0 computerpass  : ��;��
�� 
badm; m  lm��
�� boovtrue��  4 R      ������
�� .ascrerr ****      � ****��  ��  ��  2 <=< l {{��������  ��  ��  = >?> I {���@A
�� .sysodlogaskr        TEXT@ b  {�BCB m  {~DD �EE ( I n s t a l l i n g   P r i n t e r :  C o  ~����� 0 printers  A ��FG
�� 
btnsF J  ��HH I��I m  ��JJ �KK  C a n c e l��  G �L�~
� 
givuL m  ���}�} �~  ? MNM l ���|�{�z�|  �{  �z  N O�yO I ���xP�w
�x .sysoexecTEXT���     TEXTP b  ��QRQ b  ��STS b  ��UVU b  ��WXW m  ��YY �ZZ  l p a d m i n   - p  X o  ���v�v 0 printers  V m  ��[[ �\\ F   - E   - v   l p d : / / g a z u g . b r e n t w o o d . b c . c a /T o  ���u�u 0 printers  R m  ��]] �^^ �   - m   " g u t e n p r i n t . 5 . 2 : / / p c l - g _ 6 / e x p e r t   G e n e r i c   P C L   6 / P C L   X L   P r i n t e r   -   C U P S + G u t e n p r i n t   v 5 . 2 . 9 "�w  �y  ��  ��  ' _`_ l ���t�s�r�t  �s  �r  ` a�qa I ���pb�o
�p .sysoexecTEXT���     TEXTb m  ��cc �dd * u m o u n t   / V o l u m e s / s e t u p�o  �q  � R      �n�m�l
�n .ascrerr ****      � ****�m  �l  ��  ��  ��  � efe l     �k�j�i�k  �j  �i  f ghg l ��i�h�gi I ���fjk
�f .sysodlogaskr        TEXTj m  ��ll �mm  S e t u p   C o m p l e t e !k �eno
�e 
btnsn J  ��pp q�dq m  ��rr �ss  O k�d  o �ct�b
�c 
dfltt m  ���a�a �b  �h  �g  h uvu l     �`�_�^�`  �_  �^  v wxw l     �]�\�[�]  �\  �[  x yzy i   	 {|{ I      �Z}�Y�Z (0 collectcredentials collectCredentials} ~�X~ o      �W�W 0 	incorrect  �X  �Y  | k     M ��� I    �V�U�T
�V .miscactvnull��� ��� null�U  �T  � ��� Z    ���S�R� =   	��� o    �Q�Q 0 	incorrect  � m    �P
�P boovtrue� I   �O��N
�O .sysodlogaskr        TEXT� m    �� ��� | Y o u r   B C S   u s e r n a m e   o r   p a s s w o r d   w a s   i n c o r r e c t .   P l e a s e   t r y   a g a i n .�N  �S  �R  � ��� I   �M��
�M .sysodlogaskr        TEXT� m    �� ��� V P l e a s e   e n t e r   y o u r   B C S   u s e r n a m e   ( f i r s t . l a s t )� �L��K
�L 
dtxt� m    �� ���  �K  � ��� r    ,��� I    &�J��I�J "0 escapethestring escapeTheString� ��H� l   "��G�F� n    "��� 1     "�E
�E 
ttxt� l    ��D�C� 1     �B
�B 
rslt�D  �C  �G  �F  �H  �I  � o      �A�A 0 username  � ��� l  - -�@�?�>�@  �?  �>  � ��� I  - 2�=�<�;
�= .miscactvnull��� ��� null�<  �;  � ��� l  3 3�:�9�8�:  �9  �8  � ��� I  3 <�7��
�7 .sysodlogaskr        TEXT� m   3 4�� ��� > P l e a s e   e n t e r   y o u r   B C S   p a s s w o r d .� �6��
�6 
dtxt� m   5 6�� ���  � �5��4
�5 
htxt� m   7 8�3
�3 boovtrue�4  � ��� r   = K��� I   = E�2��1�2 "0 escapethestring escapeTheString� ��0� l  > A��/�.� n   > A��� 1   ? A�-
�- 
ttxt� l  > ?��,�+� 1   > ?�*
�* 
rslt�,  �+  �/  �.  �0  �1  � o      �)�) 0 pass  � ��(� l  L L�'�&�%�'  �&  �%  �(  z ��� l     �$�#�"�$  �#  �"  � ��� i    ��� I      �!�� �! "0 escapethestring escapeTheString� ��� o      �� 0 	thestring 	theString�  �   � k     ;�� ��� r     ��� n     ��� 2    �
� 
cha � o     �� 0 	thestring 	theString� o      �� 	0 chars  � ��� Y    4������ Z    /����� E    ��� m    �� ��� & ! $ & " ' * ( ) { [ | ; < > ? ~ `   \� l   ���� c    ��� n    ��� 4    ��
� 
cobj� o    �� 0 i  � o    �� 	0 chars  � m    �
� 
ctxt�  �  � r    +��� b    &��� m    �� ���  \� l   %���� c    %��� n    #��� 4     #��
� 
cobj� o   ! "�� 0 i  � o     �� 	0 chars  � m   # $�
� 
ctxt�  �  � n      ��� 4   ' *�
�
�
 
cobj� o   ( )�	�	 0 i  � o   & '�� 	0 chars  �  �  � 0 i  � m   	 
�� � n   
 ��� 1    �
� 
leng� o   
 �� 	0 chars  �  � ��� L   5 ;�� c   5 :��� n   5 8��� 2   6 8�
� 
cobj� o   5 6�� 	0 chars  � m   8 9�
� 
TEXT�  � ��� l     � �����   ��  ��  � ��� i    ��� I      ������� 	0 rot13  � ���� o      ���� 0 
textstring 
textString��  ��  � k     ��� ��� q      �� ������ 0 outchars outChars��  � ��� r     � � J     ����    o      ���� 0 outchars outChars�  X    z�� k    u  Z    p	
�� G    2 l   "���� F    " @     o    ���� 0 ch   m     �  a B      o    ���� 0 ch   m     �  m��  ��   l  % 0���� F   % 0 @   % ( o   % &���� 0 ch   m   & ' �  A B   + .  o   + ,���� 0 ch    m   , -!! �""  M��  ��  	 r   5 @#$# 5   5 >��%��
�� 
cha % l  7 <&����& [   7 <'(' l  7 :)����) n   7 :*+* 1   8 :��
�� 
ID  + o   7 8���� 0 ch  ��  ��  ( m   : ;���� ��  ��  
�� kfrmID  $ o      ���� 0 ch  
 ,-, G   C ^./. l  C N0����0 F   C N121 @   C F343 o   C D���� 0 ch  4 m   D E55 �66  n2 B   I L787 o   I J���� 0 ch  8 m   J K99 �::  z��  ��  / l  Q \;����; F   Q \<=< @   Q T>?> o   Q R���� 0 ch  ? m   R S@@ �AA  N= B   W ZBCB o   W X���� 0 ch  C m   X YDD �EE  Z��  ��  - F��F r   a lGHG 5   a j��I��
�� 
cha I l  c hJ����J \   c hKLK l  c fM����M n   c fNON 1   d f��
�� 
ID  O o   c d���� 0 ch  ��  ��  L m   f g���� ��  ��  
�� kfrmID  H o      ���� 0 ch  ��  ��   P��P r   q uQRQ o   q r���� 0 ch  R n      STS  ;   s tT o   r s���� 0 outchars outChars��  �� 0 ch   l   U����U n    VWV 2  	 ��
�� 
cha W o    	���� 0 
textstring 
textString��  ��   X��X L   { �YY c   { �Z[Z o   { |���� 0 outchars outChars[ m   | ��
�� 
ctxt��  � \]\ l     ��������  ��  ��  ] ^��^ i    _`_ I      �������� 0 mountdrives mountDrives��  ��  ` k    aa bcb r     ded m     ff �gg  m o u n t   - t   s m b f s  e o      ���� 0 	smb_mount  c hih r    jkj m    ��
�� boovfalsk o      ���� 0 	errorbool 	errorBooli lml r    non m    	��
�� boovfalso o      ���� 0 finishedbool finishedBoolm p��p W   qrq k   ss tut I   ������
�� .miscactvnull��� ��� null��  ��  u vwv I   %��xy
�� .sysodlogaskr        TEXTx m    zz �{{ $ M a p p i n g   h o m e   d r i v ey ��|}
�� 
btns| J    ~~ �� m    �� ���  C a n c e l��  } �����
�� 
givu� m     !���� ��  w ��� l  & &��������  ��  ��  � ��� Q   & =����� I  ) 4�����
�� .sysoexecTEXT���     TEXT� b   ) 0��� m   ) *�� ���  r m d i r   / V o l u m e s /� o   * /���� 0 username  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   > W����� k   A N�� ��� I  A L�����
�� .sysoexecTEXT���     TEXT� b   A H��� m   A B�� ���  m k d i r   / V o l u m e s /� o   B G���� 0 username  ��  � ���� l  M M��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   X ����� I  [ ������
�� .sysoexecTEXT���     TEXT� b   [ ���� b   [ z��� b   [ v��� b   [ p��� b   [ l��� b   [ f��� b   [ d��� b   [ ^��� o   [ \���� 0 	smb_mount  � m   \ ]�� ���  / /� o   ^ c���� 0 username  � m   d e�� ���  :� o   f k���� 0 pass  � m   l o�� ��� . @ f r o d o . b r e n t w o o d . b c . c a /� o   p u���� 0 username  � m   v y�� ���  $   / V o l u m e s /� o   z ���� 0 username  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r   � ���� m   � ���
�� boovtrue� o      ���� 0 	errorbool 	errorBool� ��� l  � ���������  ��  ��  � ��� I  � �������
�� .miscactvnull��� ��� null��  ��  � ��� I  � �����
�� .sysodlogaskr        TEXT� m   � ��� ��� & M a p p i n g   s h a r e   d r i v e� ����
�� 
btns� J   � ��� ���� m   � ��� ���  C a n c e l��  � �����
�� 
givu� m   � ����� ��  � ��� l  � ��������  ��  �  � ��� Q   � ����~� I  � ��}��|
�} .sysoexecTEXT���     TEXT� m   � ��� ��� ( r m d i r   / V o l u m e s / s h a r e�|  � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  �~  � ��� Q   � ����x� I  � ��w��v
�w .sysoexecTEXT���     TEXT� m   � ��� ��� ( m k d i r   / V o l u m e s / s h a r e�v  � R      �u�t�s
�u .ascrerr ****      � ****�t  �s  �x  � ��� Q   � ����� I  � ��r��q
�r .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��p�p 0 	smb_mount  � m   � ��� ���  / /� o   � ��o�o 0 username  � m   � ��� ���  :� o   � ��n�n 0 pass  � m   � ��� ��� V @ f r o d o . b r e n t w o o d . b c . c a / s h a r e   / V o l u m e s / s h a r e�q  � R      �m�l�k
�m .ascrerr ****      � ****�l  �k  � r   � ���� m   � ��j
�j boovtrue� o      �i�i 0 	errorbool 	errorBool� ��h� Z   ����g�� =  � ���� o   � ��f�f 0 	errorbool 	errorBool� m   � ��e
�e boovtrue� k   
�� ��� I   �d��c�d (0 collectcredentials collectCredentials� ��b� m  �a
�a boovtrue�b  �c  � ��`� r  
   m  �_
�_ boovfals o      �^�^ 0 	errorbool 	errorBool�`  �g  � r   m  �]
�] boovtrue o      �\�\ 0 finishedbool finishedBool�h  r =    o    �[�[ 0 finishedbool finishedBool m    �Z
�Z boovtrue��  ��       
�Y   	
�Y   �X�W�V�U�T�S�R�Q�X 0 username  �W 0 pass  �V 0 computerpass  �U (0 collectcredentials collectCredentials�T "0 escapethestring escapeTheString�S 	0 rot13  �R 0 mountdrives mountDrives
�Q .aevtoappnull  �   � **** �P|�O�N�M�P (0 collectcredentials collectCredentials�O �L�L   �K�K 0 	incorrect  �N   �J�J 0 	incorrect   �I��H��G��F�E�D���C�B
�I .miscactvnull��� ��� null
�H .sysodlogaskr        TEXT
�G 
dtxt
�F 
rslt
�E 
ttxt�D "0 escapethestring escapeTheString
�C 
htxt�B �M N*j  O�e  
�j Y hO���l O*��,k+ Ec   O*j  O����e� O*��,k+ Ec  OP �A��@�?�>�A "0 escapethestring escapeTheString�@ �=�=   �<�< 0 	thestring 	theString�?   �;�:�9�; 0 	thestring 	theString�: 	0 chars  �9 0 i   �8�7��6�5��4
�8 
cha 
�7 
leng
�6 
cobj
�5 
ctxt
�4 
TEXT�> <��-E�O -k��,Ekh ��/�& ��/�&%��/FY h[OY��O��-�&	 �3��2�1�0�3 	0 rot13  �2 �/�/   �.�. 0 
textstring 
textString�1   �-�,�+�- 0 
textstring 
textString�, 0 outchars outChars�+ 0 ch   �*�)�(�'�&!�%�$�#59@D�"
�* 
cha 
�) 
kocl
�( 
cobj
�' .corecnte****       ****
�& 
bool
�% 
ID  �$ 
�# kfrmID  
�" 
ctxt�0 �jvE�O t��-[��l kh ��	 ���&
 ��	 ���&�& *��,��0E�Y /��	 ���&
 ��	 ���&�& *��,��0E�Y hO��6F[OY��O�a &
 �!`� ���! 0 mountdrives mountDrives�   �   ���� 0 	smb_mount  � 0 	errorbool 	errorBool� 0 finishedbool finishedBool f�z�����������������������
� .miscactvnull��� ��� null
� 
btns
� 
givu� � 
� .sysodlogaskr        TEXT
� .sysoexecTEXT���     TEXT�  �  � (0 collectcredentials collectCredentials��E�OfE�OfE�Oh�e *j O���kv��� O �b   %j 
W X  hO �b   %j 
OPW X  hO .��%b   %�%b  %a %b   %a %b   %j 
W 
X  eE�O*j Oa �a kv��� O a j 
W X  hO a j 
W X  hO "�a %b   %a %b  %a %j 
W 
X  eE�O�e  *ek+ OfE�Y eE�[OY�� ����
� .aevtoappnull  �   � **** k    �      #  &  A  �    �!!  �""  �##  �$$  �%% && '' /(( 2)) B** J++ �,, �-- �.. �// �00 �11 �22 g��  �  �     r� �
�	� 7 ;� J S� W���� i� � w� �� ���� � ����� � � � � � � � � � ����� ������� ��� ����� $7=HS��bd��fkpuz�����������������������������������������",7DJY[]clr��
� .miscactvnull��� ��� null
�
 .sysodlogaskr        TEXT
�	 
null
� 
bool� (0 collectcredentials collectCredentials
� 
dtxt
� 
htxt� 
� 
rslt
� 
ttxt� 0 	pass_stat  
�  .sysoexecTEXT���     TEXT�� 0 thefinderpid theFinderPID
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
givu�� �� 0 	smb_mount  �� 
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
dflt��*j  O�j O*j  Ob   � 
 b  � �&
 b   � �&
 b  � �& *fk+ Y hOb  � 
 b  � �& �����e� O��,Ec  Oa E` O uh_ a   Ha j E` Oa _ %a b  a e� Oa _ %a b  a e� Oa E` W X  a �a �e� O��,Ec  [OY��Y hO*j  Oa a  a !a "a #a $a %a &a 'va (a )l *E` +O*j+ ,O*j  Oa -a .a /kva 0a 1� O a 2b   %a 3%j W X  hO a 4j W X  hO a 5b   %a 6%j Oa 7j W X  hO*j  Oa 8a .a 9kva 0a 1� O a :j W X  hO ba ;j O_ <a =%b   %a >%_ ?%a @%j Oa Aj Oa Bj Oa Cj Oa Dj Oa Ej Oa Fj Oa Gj W X  hO a H 	a Ij JUW X  hO Ta K J*a La M/j Nf  8*a Oa La P*a L-6a Qa Ra Sa Tfa Ua Va Wa Xa 'a Y ZY hUW X  hO a [j Oa \j Oa ]j W X  hO a ^j W X  hO a _j W X  hO*j  O �_ <a `%j Oa aa .a bkva 0a 1� Oa cj Oa da .a ekva 0a 1� Oa fj O_ +a g V a ha b  a e� W X  hOa i_ +%a .a jkva 0a 1� Oa k_ +%a l%_ +%a m%j Y hOa nj W X  hOa oa .a pkva qk� ascr  ��ޭ
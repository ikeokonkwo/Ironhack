FasdUAS 1.101.10   ��   ��    k             l     ��  ��    #  Automation Script for xScope     � 	 	 :   A u t o m a t i o n   S c r i p t   f o r   x S c o p e   
  
 l     ��������  ��  ��        l     ��  ��    R L NOTE: Editing this script can easily break the app, so don't do it. Really.     �   �   N O T E :   E d i t i n g   t h i s   s c r i p t   c a n   e a s i l y   b r e a k   t h e   a p p ,   s o   d o n ' t   d o   i t .   R e a l l y .      l     ��������  ��  ��        i         I      �������� 0 
getversion 
getVersion��  ��    m        �    1 . 1      l     ��������  ��  ��        l     ��  ��    C = These functions are used when taking a full-page screenshot.     �   z   T h e s e   f u n c t i o n s   a r e   u s e d   w h e n   t a k i n g   a   f u l l - p a g e   s c r e e n s h o t .     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ O I Given an application name, a URL for the frontmost document is returned.    % � & & �   G i v e n   a n   a p p l i c a t i o n   n a m e ,   a   U R L   f o r   t h e   f r o n t m o s t   d o c u m e n t   i s   r e t u r n e d . #  ' ( ' l     �� ) *��   ) Y S Safari and Chrome are supported using the application's scripting interface, while    * � + + �   S a f a r i   a n d   C h r o m e   a r e   s u p p o r t e d   u s i n g   t h e   a p p l i c a t i o n ' s   s c r i p t i n g   i n t e r f a c e ,   w h i l e (  , - , l     �� . /��   . [ U Firefox uses system events with keystrokes to select the location field and copy its    / � 0 0 �   F i r e f o x   u s e s   s y s t e m   e v e n t s   w i t h   k e y s t r o k e s   t o   s e l e c t   t h e   l o c a t i o n   f i e l d   a n d   c o p y   i t s -  1 2 1 l     �� 3 4��   3  
 contents.    4 � 5 5    c o n t e n t s . 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   : U O https://gist.github.com/vitorgalvao/5392178#file-get_title_and_url-applescript    ; � < < �   h t t p s : / / g i s t . g i t h u b . c o m / v i t o r g a l v a o / 5 3 9 2 1 7 8 # f i l e - g e t _ t i t l e _ a n d _ u r l - a p p l e s c r i p t 9  = > = l     ��������  ��  ��   >  ? @ ? i     A B A I      �� C���� (0 getapplebrowserurl getAppleBrowserURL C  D�� D o      ���� "0 applicationname applicationName��  ��   B w      E F E O    G H G L   	  I I n   	  J K J 1    ��
�� 
pURL K 4  	 �� L
�� 
docu L m    ����  H 4    �� M
�� 
capp M o    ���� "0 applicationname applicationName F�                                                                                  sfri  alis    N  Macintosh HD               �[��H+     �
Safari.app                                                       "��_        ����  	                Applications    �\Ag      �y�       �  %Macintosh HD:Applications: Safari.app    
 S a f a r i . a p p    M a c i n t o s h   H D  Applications/Safari.app   / ��   @  N O N l     ��������  ��  ��   O  P Q P i     R S R I      �� T���� *0 getgooglebrowserurl getGoogleBrowserURL T  U�� U o      ���� "0 applicationname applicationName��  ��   S w      V W V O    X Y X L   	  Z Z n   	  [ \ [ 1    ��
�� 
URL  \ n   	  ] ^ ] 1    ��
�� 
acTa ^ 4  	 �� _
�� 
cwin _ m    ����  Y 4    �� `
�� 
capp ` o    ���� "0 applicationname applicationName W�                                                                                  rimZ  alis    h  Macintosh HD               �[��H+     �Google Chrome.app                                               �Ч�        ����  	                Applications    �\Ag      Ч�       �  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��   Q  a b a l     ��������  ��  ��   b  c d c i     e f e I      �������� ,0 getfirefoxbrowserurl getFirefoxBrowserURL��  ��   f k     , g g  h i h l     �� j k��   j e _ NOTE: This function is never called in the Mac App Store version since there is no entitlement    k � l l �   N O T E :   T h i s   f u n c t i o n   i s   n e v e r   c a l l e d   i n   t h e   M a c   A p p   S t o r e   v e r s i o n   s i n c e   t h e r e   i s   n o   e n t i t l e m e n t i  m n m l     �� o p��   o   to use System Events.    p � q q ,   t o   u s e   S y s t e m   E v e n t s . n  r s r l     ��������  ��  ��   s  t u t O    
 v w v I   	������
�� .miscactvnull��� ��� null��  ��   w m      x x�                                                                                  MOZB  alis    P  Macintosh HD               �[��H+     �Firefox.app                                                     y<��CT1        ����  	                Applications    �\Ag      �C��       �  &Macintosh HD:Applications: Firefox.app    F i r e f o x . a p p    M a c i n t o s h   H D  Applications/Firefox.app  / ��   u  y z y O     { | { k     } }  ~  ~ I   �� � �
�� .prcskprsnull���     ctxt � m     � � � � �  l � �� ���
�� 
faal � m    ��
�� eMdsKcmd��     ��� � I   �� � �
�� .prcskprsnull���     ctxt � m     � � � � �  c � �� ���
�� 
faal � m    ��
�� eMdsKcmd��  ��   | m     � ��                                                                                  sevs  alis    �  Macintosh HD               �[��H+     2System Events.app                                               ��4�-        ����  	                CoreServices    �\Ag      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   z  � � � I    %�� ���
�� .sysodelanull��� ��� nmbr � m     ! � � ?�      ��   �  ��� � L   & , � � I  & +������
�� .JonsgClp****    ��� null��  ��  ��   d  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 geturl getURL �  ��� � o      ���� "0 applicationname applicationName��  ��   � k     z � �  � � � l     ��������  ��  ��   �  � � � r      � � � m     ��
�� 
null � o      ���� 0 theurl theURL �  � � � l   ��������  ��  ��   �  � � � Q    v � ��� � Z    m � � ��� � l   
 ����� � =    
 � � � o    ���� "0 applicationname applicationName � m    	 � � � � �  S a f a r i��  ��   � r     � � � I    �� ����� (0 getapplebrowserurl getAppleBrowserURL �  ��� � o    ���� "0 applicationname applicationName��  ��   � o      ���� 0 theurl theURL �  � � � l    ����� � =     � � � o    ���� "0 applicationname applicationName � m     � � � � �  W e b k i t��  ��   �  � � � r    & � � � I    $�� ����� (0 getapplebrowserurl getAppleBrowserURL �  ��� � o     ���� "0 applicationname applicationName��  ��   � o      ���� 0 theurl theURL �  � � � l  ) , ����� � =   ) , � � � o   ) *���� "0 applicationname applicationName � m   * + � � � � �  G o o g l e   C h r o m e��  ��   �  � � � r   / 7 � � � I   / 5�� ����� *0 getgooglebrowserurl getGoogleBrowserURL �  ��� � o   0 1���� "0 applicationname applicationName��  ��   � o      ���� 0 theurl theURL �  � � � l  : = ����� � =   : = � � � o   : ;���� "0 applicationname applicationName � m   ; < � � � � � ( G o o g l e   C h r o m e   C a n a r y��  ��   �  � � � r   @ H � � � I   @ F�� ����� *0 getgooglebrowserurl getGoogleBrowserURL �  ��� � o   A B�� "0 applicationname applicationName��  ��   � o      �~�~ 0 theurl theURL �  � � � l  K N ��}�| � =   K N � � � o   K L�{�{ "0 applicationname applicationName � m   L M � � � � �  C h r o m i u m�}  �|   �  � � � r   Q Y � � � I   Q W�z ��y�z *0 getgooglebrowserurl getGoogleBrowserURL �  ��x � o   R S�w�w "0 applicationname applicationName�x  �y   � o      �v�v 0 theurl theURL �  � � � l  \ _ ��u�t � =   \ _ � � � o   \ ]�s�s "0 applicationname applicationName � m   ] ^ � � � � �  F i r e f o x�u  �t   �  ��r � r   b i � � � I   b g�q�p�o�q ,0 getfirefoxbrowserurl getFirefoxBrowserURL�p  �o   � o      �n�n 0 theurl theURL�r  ��   � R      �m�l�k
�m .ascrerr ****      � ****�l  �k  ��   �  � � � l  w w�j�i�h�j  �i  �h   �  � � � o   w x�g�g 0 theurl theURL �  ��f � l  y y�e�d�c�e  �d  �c  �f   �  � � � l     �b�a�`�b  �a  �`   �  � � � l     �_�^�]�_  �^  �]   �  � � � l     �\�[�Z�\  �[  �Z   �  � � � l     �Y � ��Y   � < 6 This function is used to reposition a desktop window.    � �   l   T h i s   f u n c t i o n   i s   u s e d   t o   r e p o s i t i o n   a   d e s k t o p   w i n d o w . �  l     �X�W�V�X  �W  �V    l     �U�U   i c In the Mac App Store version, that window can only be Safari, Google Chrome or Firefox since those    � �   I n   t h e   M a c   A p p   S t o r e   v e r s i o n ,   t h a t   w i n d o w   c a n   o n l y   b e   S a f a r i ,   G o o g l e   C h r o m e   o r   F i r e f o x   s i n c e   t h o s e 	 l     �T
�T  
 9 3 are the only entitlements available for scripting.    � f   a r e   t h e   o n l y   e n t i t l e m e n t s   a v a i l a b l e   f o r   s c r i p t i n g .	  l     �S�R�Q�S  �R  �Q    i     I      �P�O�P (0 updatewindowbounds updateWindowBounds  o      �N�N 0 processname processName  o      �M�M &0 currentwindowname currentWindowName  o      �L�L 0 currentx currentX  o      �K�K 0 currenty currentY  o      �J�J 0 currentwidth currentWidth  o      �I�I 0 currentheight currentHeight  !  o      �H�H 0 newx newX! "#" o      �G�G 0 newy newY# $%$ o      �F�F 0 newwidth newWidth% &�E& o      �D�D 0 	newheight 	newHeight�E  �O   k     m'' ()( r     *+* m     ,, �--  + o      �C�C 0 thewindowname theWindowName) ./. r    010 m    �B
�B boovfals1 o      �A�A 0 reusedwindow reusedWindow/ 232 l   �@�?�>�@  �?  �>  3 454 O    h676 k    g88 9:9 l   �=;<�=  ; . ( get the window bounds we're looking for   < �== P   g e t   t h e   w i n d o w   b o u n d s   w e ' r e   l o o k i n g   f o r: >?> r    @A@ J    BB CDC o    �<�< 0 currentx currentXD EFE o    �;�; 0 currenty currentYF GHG [    IJI o    �:�: 0 currentwidth currentWidthJ o    �9�9 0 currentx currentXH K�8K [    LML o    �7�7 0 currentheight currentHeightM o    �6�6 0 currenty currentY�8  A o      �5�5 0 matchbounds matchBounds? NON l   �4�3�2�4  �3  �2  O P�1P X    gQ�0RQ Z   . bST�/�.S l  . 3U�-�,U =   . 3VWV o   . /�+�+ 0 matchbounds matchBoundsW l  / 2X�*�)X n   / 2YZY 1   0 2�(
�( 
pbndZ o   / 0�'�' 0 	thewindow 	theWindow�*  �)  �-  �,  T k   6 ^[[ \]\ r   6 ;^_^ n   6 9`a` 1   7 9�&
�& 
pnama o   6 7�%�% 0 	thewindow 	theWindow_ o      �$�$ 0 thewindowname theWindowName] bcb r   < Jded J   < Fff ghg o   < =�#�# 0 newx newXh iji o   = >�"�" 0 newy newYj klk [   > Amnm o   > ?�!�! 0 newwidth newWidthn o   ? @� �  0 newx newXl o�o [   A Dpqp o   A B�� 0 	newheight 	newHeightq o   B C�� 0 newy newY�  e n      rsr 1   G I�
� 
pbnds o   F G�� 0 	thewindow 	theWindowc tut Z   K \vw��v l  K Px��x >  K Pyzy n   K N{|{ 1   L N�
� 
pidx| o   K L�� 0 	thewindow 	theWindowz m   N O�� �  �  w k   S X}} ~~ l  S S����  �    make the window frontmost   � ��� 4   m a k e   t h e   w i n d o w   f r o n t m o s t ��� r   S X��� m   S T�� � n      ��� 1   U W�
� 
pidx� o   T U�� 0 	thewindow 	theWindow�  �  �  u ���  S   ] ^�  �/  �.  �0 0 	thewindow 	theWindowR 2   "�
� 
cwin�1  7 4    ��
� 
capp� o   
 �� 0 processname processName5 ��� l  i i�
�	��
  �	  �  � ��� J   i m�� ��� o   i j�� 0 thewindowname theWindowName� ��� o   j k�� 0 reusedwindow reusedWindow�  �   ��� l     ��� �  �  �   �       �����������  � �������������� 0 
getversion 
getVersion�� (0 getapplebrowserurl getAppleBrowserURL�� *0 getgooglebrowserurl getGoogleBrowserURL�� ,0 getfirefoxbrowserurl getFirefoxBrowserURL�� 0 geturl getURL�� (0 updatewindowbounds updateWindowBounds� �� ���������� 0 
getversion 
getVersion��  ��  �  �  �� �� �� B���������� (0 getapplebrowserurl getAppleBrowserURL�� ����� �  ���� "0 applicationname applicationName��  � ���� "0 applicationname applicationName�  F������
�� 
capp
�� 
docu
�� 
pURL�� �Z*�/ 
*�k/�,EU� �� S���������� *0 getgooglebrowserurl getGoogleBrowserURL�� ����� �  ���� "0 applicationname applicationName��  � ���� "0 applicationname applicationName�  W��������
�� 
capp
�� 
cwin
�� 
acTa
�� 
URL �� �Z*�/ *�k/�,�,EU� �� f���������� ,0 getfirefoxbrowserurl getFirefoxBrowserURL��  ��  �  �  x�� � ������� � �����
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt
�� .sysodelanull��� ��� nmbr
�� .JonsgClp****    ��� null�� -� *j UO� ���l O���l UO�j 	O*j 
� �� ����������� 0 geturl getURL�� ����� �  ���� "0 applicationname applicationName��  � ������ "0 applicationname applicationName�� 0 theurl theURL� �� ��� � ��� � � �������
�� 
null�� (0 getapplebrowserurl getAppleBrowserURL�� *0 getgooglebrowserurl getGoogleBrowserURL�� ,0 getfirefoxbrowserurl getFirefoxBrowserURL��  ��  �� {�E�O k��  *�k+ E�Y W��  *�k+ E�Y F��  *�k+ E�Y 5��  *�k+ E�Y $��  *�k+ E�Y ��  *j+ 	E�Y hW X 
 hO�OP� ������������ (0 updatewindowbounds updateWindowBounds�� ����� 
� 
 ���������������������� 0 processname processName�� &0 currentwindowname currentWindowName�� 0 currentx currentX�� 0 currenty currentY�� 0 currentwidth currentWidth�� 0 currentheight currentHeight�� 0 newx newX�� 0 newy newY�� 0 newwidth newWidth�� 0 	newheight 	newHeight��  � ������������������������������ 0 processname processName�� &0 currentwindowname currentWindowName�� 0 currentx currentX�� 0 currenty currentY�� 0 currentwidth currentWidth�� 0 currentheight currentHeight�� 0 newx newX�� 0 newy newY�� 0 newwidth newWidth�� 0 	newheight 	newHeight�� 0 thewindowname theWindowName�� 0 reusedwindow reusedWindow�� 0 matchbounds matchBounds�� 0 	thewindow 	theWindow� 
,������������������
�� 
capp�� 
�� 
cwin
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pbnd
�� 
pnam
�� 
pidx�� n�E�OfE�O*�/ Z�������vE�O J*�-[��l kh ���,  -��,E�O�������v��,FO��,k 
k��,FY hOY h[OY��UO��lvascr  ��ޭ
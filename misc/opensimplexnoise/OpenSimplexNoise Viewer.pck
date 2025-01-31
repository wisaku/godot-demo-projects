GDPC                                                                             	   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@      .      Tpa�#[��%��(   res://OpenSimplexNoise_Viewer.gd.remap  �;      2       �Уs1���F���k�$   res://OpenSimplexNoise_Viewer.gdc   �      �
      b��5�t����Z��$   res://OpenSimplexNoise_Viewer.shader`      j      LSKEf+�-S�;�H$   res://OpenSimplexNoise_Viewer.tres  �      �       �@F�0��f-j���s$   res://OpenSimplexNoise_Viewer.tscn  �      }      ��/%C:�nw�?v�@   res://icon.png  0<      =      ��:3�mg$�j�&�   res://icon.png.import   p9      �      �����%��(#AB�   res://project.binarypQ      �      � SD�UݽŨ@�F    GDSC   *      ]   h     ������ڶ   ����Ӷ��   ���������������Ӷ���   ����   ���������Ӷ�   ��������Ӷ��   ��������Ӷ��   �����϶�   �����������������Ķ�   ����������ζ   ����Ӷ��   ����������������ζ��   ���������϶�   �������������ζ�   ������Ŷ   ������������ζ��   �����Ҷ�   �����������������ζ�   ����������Ӷ   ��������������������Ŷ��   ����Ӷ��   �����������������Ӷ�   ������������Ӷ��   �����������Ӷ���   ���ض���   ���ζ���   ��������ڶ��   �������������������Ӷ���   �������ڶ���   ���������������۶���   ����������������Ӷ��   ������Ӷ    ������������������������������Ҷ   �嶶   ���������ض�    ����������������������������Ҷ��$   ����������������������������������Ҷ$   �������������������������������Ҷ���    ������������������������������Ҷ(   �����������������������������������Ҷ���$   �������������������������������Ҷ���$   �������������������������������Ҷ���   �                 	   min_value      	   max_value      J   https://docs.godotengine.org/en/latest/classes/class_opensimplexnoise.html                                                      	      
   %      &      '      2      =      H      S      ^      _      `      d      e      f      l      m      n      x      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8      9     :     ;   	  <   
  =     >     ?     @     A     B     C     D      E   &  F   *  G   +  H   ,  I   3  J   4  K   5  L   ;  M   ?  N   @  O   A  P   H  Q   I  R   J  S   N  T   R  U   S  V   T  W   [  X   \  Y   ]  Z   a  [   e  \   f  ]   3YY;�  �  T�  PQYY;�  Y;�  �  Y;�  �  YYY0�  PQV�  �  �  W�  �	  T�
  �  T�#  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  �  �  �  PQ�  YY0�  PQV�  �  �  ;�  �  T�  PQ�  ;�  �  T�  PQ�  �  �  ;�  PP�  �  Q�  Q�  ;�  PP�  �  Q�  Q�  ;�  W�  T�  �  �  T�  P�  R�  Q�  �  T�  P�  R�  Q�  �  �  �  T�  P�  Q�  W�  T�  �  �  YY0�   PQV�  �!  T�"  P�  Q�  YY0�#  P�
  QV�  �  �  �  T�#  �
  �  �  PQ�  YY0�$  P�
  QV�  �  �  �  T�  �
  �  �  PQ�  YY0�%  P�
  QV�  �  �  �  T�  �
  �  �  PQ�  YY0�&  P�
  QV�  �  �  �  T�  �
  �  �  PQ�  YY0�'  P�
  QV�  �  �  �  T�  �
  �  �  PQ�  YY0�(  P�
  QV�  �  �  �  �
  �  �  PQ�  YY0�)  P�
  QV�  �  �  �  �
  �  �  PQ�  Y`       shader_type canvas_item;

uniform float min_value = -1;
uniform float max_value = 1;

void fragment() {
	
	//Get the color
	vec4 color = texture(TEXTURE, UV);
	
	//Compare the value
	float gray = color.x;
	if (gray < min_value){
		color = vec4(0, 0, 0, 1);
	}else if (gray > max_value) {
		color = vec4(1, 1, 1, 1);
	}
	
	//Write back the color
	COLOR = color;
}      [gd_resource type="ShaderMaterial" load_steps=2 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.shader" type="Shader" id=1]

[resource]
shader = ExtResource( 1 )
shader_param/min_value = -1.0
shader_param/max_value = 1.0
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.gd" type="Script" id=1]
[ext_resource path="res://OpenSimplexNoise_Viewer.tres" type="Material" id=2]

[node name="OpenSimplexNoise Viewer" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 8.42108
margin_top = -5.26315
margin_right = 8.42114
margin_bottom = -5.26318
script = ExtResource( 1 )

[node name="DocumentationButton" type="Button" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_top = 20.0
margin_right = -20.0
grow_horizontal = 0
text = "API Documentation"

[node name="SeamlessNoiseTexture" type="TextureRect" parent="."]
material = ExtResource( 2 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = 30.0
margin_top = -20.0
margin_right = 70.0
margin_bottom = 20.0
grow_horizontal = 2
grow_vertical = 2

[node name="ParameterContainer" type="VBoxContainer" parent="."]
editor/display_folded = true
margin_left = 20.0
margin_top = 20.0
margin_right = 300.0
margin_bottom = 40.0

[node name="SeedSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -1.53049e+009
max_value = 1.53049e+009
rounded = true
allow_greater = true
allow_lesser = true
prefix = "Seed:"

[node name="LacunaritySpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
max_value = 1e+008
step = 0.01
allow_greater = true
prefix = "Lacunarity:"

[node name="PeriodSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 56.0
margin_right = 280.0
margin_bottom = 80.0
min_value = -1e+008
max_value = 1e+008
step = 0.01
allow_greater = true
prefix = "Period:"

[node name="PersistenceSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 84.0
margin_right = 280.0
margin_bottom = 108.0
max_value = 1e+008
step = 0.01
allow_greater = true
prefix = "Persistance:"

[node name="OctavesSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 112.0
margin_right = 280.0
margin_bottom = 136.0
min_value = 1.0
max_value = 10.0
value = 1.0
allow_greater = true
prefix = "Octaves:"

[node name="ClipContainer" type="VBoxContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_left = 20.0
margin_top = -72.0
margin_right = 300.0
margin_bottom = -20.0
grow_vertical = 0

[node name="MinClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = -1.0
prefix = "Min:"

[node name="MaxClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = 1.0
prefix = "Max:"
[connection signal="pressed" from="DocumentationButton" to="." method="_on_DocumentationButton_pressed"]
[connection signal="value_changed" from="ParameterContainer/SeedSpinBox" to="." method="_on_SeedSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/LacunaritySpinBox" to="." method="_on_LacunaritySpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PeriodSpinBox" to="." method="_on_PeriodSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PersistenceSpinBox" to="." method="_on_PersistenceSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/OctavesSpinBox" to="." method="_on_OctavesSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MinClipSpinBox" to="." method="_on_MinClipSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MaxClipSpinBox" to="." method="_on_MaxClipSpinBox_value_changed"]
   GDST@   @             PNG �PNG

   IHDR   @   @   �iq�  �IDATx��{K�$i���kFFޫ���z���(.-���q5(��Ȭ왍�����č �N���\����QD���뒕Yy����{Ŀ�:���kƙ�_h��*32�y�{��<�PU>������?���y:�����7��,�V��i��g��O<M��h4�eDQ���X�V����ώ�cDQį����]��������|��^�z��˴Z-�f���<�{ǿ��� |�3� ��Oz��_��/y�u�^������(�X�  �6��n8�����7<�� �| ��o~ ��_�❍xh�g<�����'>q���<8
�0z����,� �2��1V���&�@�����
 `�^�稪j�^�C�4����N�h��[/��^~���d��^r����e��} x�	������b��Z�0�Nq��=�V+Ȳ�<�a�&\�E��F��B��H��z�n� ���0E�<���X�ר������ �� �}Z�v��0A����<��3x���Z'\:`O��W�$�#�������޽��j�,ː$	$I�m�0M�V���(
躎[�nagg��c4a6���*��ʑ2�L�\.��z��6�����k$��>���]ym��uN���;�fs�(
�y˲�!�(�p8���&�	NOOyG��6lۆ$I�u�a@UU��������w��EPY���}�q���P:��A�߿��a�i�h=��s��)��{6�[o� � ������i�VU��e���a�,�f���j���V����aww�v� @�eH��,� IE�$IH�A �2�a�����������������²�}A������林K��������>�$��z��{���n#�;�������F�I�@�4��	EQ�1� @��<�v;;;�eaB��
A��:�(�b������ ��CEh�MӠ(
G�͛7�8�cY�~Qu �[U>��?bӛo�ym�
|�_��{�z뭷^�q#C(���j�v��4q���YQa�&�Z�j�ʲDY���I� �s�Apzz�4M�HA`A��8h��H�i�¶m��mlmmQ~��$I Ͼӽ����x饗����ַ  I��q �rDQ<l4�z��(��1'0 ��fEQ �2�i�,��!����j��<��	Y�E|��|>G��mi�B�eEQQ��1E4M�eY��
�Z�a@�$TU�_U�1.p�	 E 8== |��߽R8<��� ���v 8��F��F�qx��́,��Ţ(b�Z��}E�(�p��=��c��
UU�|�a��zY�!�2��:,˂ (���}�e(��m�R[U�q<��h6��u���.LӄeYT]��j���������_�(�,K��������uQ��1�u�f�dY�ah�Z������M�SX��8�Q�%j������!t]�,ˈ�����!�2>Tl����6h7��6��.V�A�����(B�e�i�(�UU��ه�?;;{������;����z=X��q�eA�:nY� $I���8?? dY۶�h4P�%$IB����
�iBL�SE��,QUG���h4�l�F�$X�V� �ł�b��EEQ@QȲ��X,� �}�����w���z(��}I��m���f�6j��i�VC�e� qCUUg���$	dY� �$	���g�,����4���0���¶mh��v���� �2�q���01��qtt�H1�Gʟ �6����;OKz뭷�8E��{�ၦi�Z͡�I�@UU4�Mt:��$I �"�<�z��(�Ȳ�����(�V���,��k躎~�EQ�����>L�D�Ӂ�8�4[[[�v��u�N�veYb�^c2�`<c:�b:�b2������
��'''� y��ax ��n�˲  w��}4à2xG���3��vQ�%��%�$�|>��d��&�8���X.�� u]GUUE�^�a MSA�"MS�j5>F�a`kk;;;�4������5�<GQ����爢���N�sQ��(�r�� �޸q���Yr��%I��!$IB�^�L�yA�eY���(��e�0��I�P�%t]G�ل$I��ggg�m�e�,K��b��$Iy���B�u�y��x�M��8A`�@��^�s�-��(B���`��f�p�@����a �+���\�[�F���:�$AY��f��Z]ױ����,��9��(�ݻw�i��0�1�|����1�8�|>� �<�0��0�L�ܦi
I����uL�D�VC��~��TU�t�0 DQ����j����94Mc�AYYETU�u��:NOO����,N�F�u����t���cdY��`�^�۶Q�%z�<��z�fp�1f�Ca*���t��|I��h4p��MA Y��<7�,�Zm/I�rG�eYDt^�}�ýV�AUUTU۶��:Lӄ�8���$A�V�,�Ȳ�V�C�J�l6�t:��i���AQ��ڂ���<��%G:��EQ��j���v�h4�[�l�F���j��h��'� ��&Կr��� ýK��mۜ��.��:�@�� �Z��2l&�E'�,˘��y��j*�n�,� �� �"�6 p]���q��q8�6�ML�<�p�Z  ��^�l(K2%�˵��:z���.F��,�Bh:��7Y��i���r	 �Ζ�%�<�z�����BUU�z=��ʼ�����#.��tXL!��0�qQh-�K�V+6Z�4�9MSx���Uv��O>����+h�ZȲ�k*�2�19�4��*ʲd��>EAUUX,��}��mض�"㻮M��l6a�&�8�$I\�%I���lm9+�s�Eq��f�V��tE���_q��o�yqn޼I�O�$���I�u�i�Ħ,K��.+cxUU9�S��e�ir�P�<i�23,��eA�e��Z��4�e�<��^����Ea}!�s��sܿ ���������0�b�`�A���{UUH��F��E���cL&DQAX�!#Z��\ׅmۜA�x<fgl��i�|��%�\.�h4���!�"��9E�d,�2��%c�*��
i���Rr���41�Ny7��VUEQ�f�0DQ���pE���&���
D����3�D�D�4�#eY��}f��F��;	-$��Y��̲��RQpa8�"K{��i�B�4��@�^� (���.��*��:j���:�4�r���(���p]�$q�n�Z(�EQ����$��,��EA��(��Y��iH���
�����Q_Y��'�	��5_�qx���lv$���Gy@& `�\.aYL�D��ʻX,�y����v�]  ������c�X�y%Gw�F���0M��&��T�QoAUU��c��s$I˲P�ב�9�(¿��/q4\��A��c� *EA��DE|q34N����m��}����`�^�(
�H+Ð�/ep:
�~�e11��fP��W�\&�ؐ��<�JU�%:�TU���RL�S��d
k �@��9�,��.�Q!I���$��y899�F%��F-����η��h4���檱Z�8�`"�7��8�1�N�O0�L�$	���z������� ��yWD_���h~�y� 8˲��i���(���f#�8�p8D����&L@�"MS\�����B�m�L� 0�"�C�e�UU��<DQ��Ȅ4i��oݺQ1�N9
�������0�j5t:����l��,������dY����b��( ����e��T�Erv��������$I�v�0A@�4�Ť��H&���}���.M���vY� y3lۆ(���P֕$��*�u��PX�HAH�YY��T�&��DQĕ��X�Ղ(��F|�-P���!q���\�O!F�p��M~A�@��A:��ir�'ʻ���$�b�`�Ct��;�vZ����TU�4������i�$���l6C�h4���R˝(q���c�=�j���)&���pH�]"!TJ��!�2�����X9���0l&��hq�\�:�V��:)�(����?qtt��z��,������u]$I��r	�q�.F���!�!rl��b�E0;t��Cv ab '���^�s���kA�M��`z��C��˲dI≦i�N�L�(_TU���J����s��?�aj,�<��
��c<�L�K���r�W�3���ۈ���(��eY�˲Q��>����,-�KFzDOg���>��5f��]�1�n��k�����D�$�OJr�v#�k<�Cǰ,i�ro��k��F�����.nܸ�M�4M7�� Hp��>�����	&�	���p����<躎�z͊.i�J��:lۆ��Ї>�������x<fN`�&754M���9��� %`�$�Q����8�z�)loockk��8������ �2�F# �h4�z�F��AE�����`���#e\jb j�۸q��lۆ�(p]��=�
�YE�u_Y���,�(S�j2�p���n�bD�"Ͳ�ja�X\q �F�qXU�QaRyEQ� ���9<����l6Y:�mUUA�4����� �cDQ��l6�z��JB"'�qj�-�Z-���ckk�7�xD���A@�рeY\q��1&�	��ʲ<|��  o��6d2��@�=2�p��˲�n��v��;I�Z-��AE�4a�&��� X�VT��P/��!�\2�� !A�b��=.'F8��f�\.�I^Rr��N�ys"�����r�% �l6����WU˲6�XL�'''���.��vEQpi����\��(b�O�"�4�\.�X�S�����H]�(��Yt,/U�+����N���aUU{��0M[[[h�ی�#/�y���A��*���iBE�Q1�$ޡil۾��)�=��F���9<��0�������+��4M� 8���/��:�2Bb�n����.��Gi��4MFo����6����&���`����9��1Sp�3$�x����j�����6#JJ��N���N��uY8�}����g��|�h�(������!C\ׅi����Ȳ���HӔ�������47n�����u6��*t:V�	_TU��pȀ����)L��j�b�q>�$�6��|��+���ht�ˮ�1�i�SO=�Q �����q]���뺰,���L0DQ����Y�To�8fc��@��n c
�"$��y�V��!d:�r�'�A-4:b�/�t_�Y�+\�!�9
���A�e����� ���ٌ��4��DP(����]TV��iڬ�T�i��*	M�P��T�-�B�ݦ.����w:v�#�4q��mM�����@�u��Ը$��`/%.�#�D4��\d�6���q�Gdo�u�h�����FQ�=	�0�pA0�LN���m�a<T� ���x���y�oc� Nt]�'�utt��< X2���Պ��h�U�$,V��˩�O&L&�C�qMӐew�)��u˲��yPU���I�)˒����xk4�����GFmN�|���q��~���y����m�tΨ�GMRj:�Z�+N�0� ��HS���łE��l��b�Z��G�����6$Ib!��nc�\b:�b�^c>�s�\�W5M;��_�xJ�W�����D�}zz:��h��#pQN��1�`ַ�O �A�4V�h��(
v.G;O�4�'�V�ܰ\.��D��R�9��j�i��a'|���}��kv����tճ��+�20�)=]i��>��Té��LM����0���� �$=��l�XBU��As��4�a����UUo�F���}�Z' ��_��׮5~8b8�(�=�qN(�P&:MMJR�F��7,A� X,��>k�4tI� �$�s�$q/����u]�$@Fr>����ϣ� ������_ \��O~�W� ��{���o  o�����q�F�$����}j�E�4M��O�J����łg�8f�0CV�i��e ��A��1�Fj�h��c8�$�6���t��V�$���x5�����?�?��C������������SI"��h��l�ܠ�y8==�iN:��0�e���`0���C���M�DR[�$�fY�?EQ�T*I����o|����/��"n߾}�w�ݻ �˲<,��NY�Rmh�	 OqQ�ʲ�;5��H�ٜ*#Ƕm�
�4M��@MP۶Ol۾=����H�O�)>	���.�'twP��EQ�cY�>Qg۶F�Md�Lu�IZ�t:X��a����hQ<����� ���m�qNvwwq��}4n�l:�'?���s��;w  ?���3��*O <����g��+�m����$	71H�$1����h�P. T"�כ����C�0^������;�r���f�������_#�{����կ^g< �ӟ�4p��?U��^��dY�w���i�l�є��(��Ig$�Mt��&I�eY������N��ӟ�����ޞ�/}�K�O��T�LJ�0�����h4ڣ6=F[U{�1<���<���K� 0�j4��Z�`>���ڼr �\}�ޓ]����?��W�tsm:�R�9��Ƨ ��=�(��,�V��!�?�_,���Ã�ju�^�?@��ƫ N6�x�Kxx������g���~ ���~w���9 �$#��G��.kww���\����-��?�^�zz�+_�
 ෿�����ݞ�~���b�[?���?����~�V҄<�    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://OpenSimplexNoise_Viewer.gdc"
              �PNG

   IHDR   @   @   �iq�   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d   tEXtSoftware paint.net 4.1.6�N	�  �IDATx^��Տ]ep��'��A:EZ�)6�����]w�b���RظK� ���		�/���k2ӳ�δ��]�d圳�}�zֳ����X)e��փ���\ض�[��C=���N;5�n�m9�S����^����3ϔ��<�����?�}�G:3g�j[ka[�����;o�裏���^�[lQ6�x�"���߾l��&e�]v)�{n������__n��jw�}w��n+/��Ry��7��̘1�@�����zp~��G� ���������c�)�l�M�`�j�>��j���{�sT9�3ʉ'�X.���2}��j7�xc�뮻���^[�.W^yes�	'��=��zp����F��<P�x�-�T��|ڴie��6*믿~Y{����ɓ˦�nZ��n�r��#�8�Di�c�=�\}��%�_��r���;�t:�r��'W�\�I�V��z�- Z��n��ց����/�^x���믿^?r�5ה�?��������Z%4����e��v+���_9���+ ��zj-,����}�Ƶ>���:��u����[w>��*�փ�pz(���C��{��x�W_}�|���i���/�@��5˻�{X����=�ܳ�QGU�@9�p�U�ǎ;�XV_}�288X�L�R�/���e�e�-���%�rH��N�o�l=8/���������//����SO���{�|��GU����r�W�#�<�^Gd[YDW�f P��k<��JwA���nX5��VX�r�a���N:��{����:/k=87[n��m��7��A>��k�?�����_�g�}vD��<��Z�j��v�}��� D�X&�6L�:uD0��뮻n�� l�]w�߭�1X�`B���Y��6��g��Wˤ��u�]WK���߯l��'�X����^*[�2��t�A5�5�X����5`Z�����g�r�9��@�:묺�%�\RYv�w�}t���86n]h=�f�힞.Cj�Ä	������jFO���
�Lq>�, �{ꮜ ��*�Tz8� { �}JM�f�c�~3-3���C����"��jj�	��e�ITV�2"2NT����1Y"n��+`T�}����_�
�j��VK� ���e�y����o�]'��6�=��SAЊ�m�*�փ�-�a�sZPP��.��:�̪�ں.#P@�`0B ��� (�_f�e�����h c�O�=���5x�c����Y�!�~c[W��փi!VC6FUu�YYS�jZ�B9Sp��i�AyAʰ�n�%��4,�m-�VZ�^���>��e}�:�j�>�XM�ͱ�f�-�� b8�cs�j2�i�p���֌�8G0�y�Qz:A����a��ăOͦ u�T�%'CA��LO^y啪/�[Or����f�mV?�߆&��C/4f���z�E ��A���06�
G�l&ʮ��C:�縠㡦֫�$0��p���@]d�K���:W~�"��G�Xr�%˚k�Y����f={�QZF����`��@��p���Ek��G9,8�q�� ŭ!� � ���s0�pc?�z��+c�Ȅ�>ʇ0�,sJ�Eg��u�d"i��}X�J� h�����Td���Lp�����>����߲+�~�wpV��Eg*�i��֒ ���:���:	�);��_�F�մ��w ZҠ!K-�TU�I�&U'-�ei�JC6�;��ڧ���|��+e� �I��6��J��`�{��y����L��}�`|�>�	x�UEb�X0��a�Q?+��RY|���K,QV^y��"l��3fTdK��������#1���Ae�� &����.�8��{0E2��,���0{X~�V�&��c��������+�XE�PBL���m`a4�Zd9�A�b�0���T�2��Öl������I ��G�����ֱ�5��8�1)2�H�꘎0��[G�QJ���I}('�	��m@�,nCF9"�	 E� �j4���z��B�ZJ��
3�����%f?�:&�ӵ�;g]f����3:�1 Ć:��O�>�����u����c6�'&��� ��� �A%�3p������5���L��� ��ɧ�:�5������!�c�` P'<(�����c��e�8��,���A����
�d�:&p �N �ӝ�>�&�]"������}d������]B���\�#����G�Dֆ8�.�eN�@&�-c�5�͜9����չ�;�K�P�f��Z� ��e�ò�1��]�)�5�2��Y�����廠=4�X�F����G�� 4�9�J{�՟u ��^9�6���+܋���&m �#���Ee`�"ǱG	a�@��7����|R�q%����^����O<Q�_�gJZK��h�#:0@d���.�� Ԭ�q��'8�u��99���nSBD��!J`֒9�|����a`]#�z:��~�b���;���jH
��盲�����#)#�� ��F�]�����	�'�,�0�d�X�!�9.;�)d��Ye)9 ��=��0����qe%Pٓuf]��`4C��nd&z��[o�Uϻ?��ALYG;� PDV<^rF0���	9fdh:s^�d��٪�i�/؁�f�&9_``����n]�%E�Q�)`9�9�NSB��lj�?� N�D�!ۜ�FTBh(Rˎ�6J��&���O�8�	�����8
@�2�~�0栭}\�%f:��M������5��~�2"(�} �8�-��Y�R�7����@1F�+���QN�Y���X˨��v�9�%�͒��������Uz@�{0&����9oo�3��`A�q({�@1�wJ.��9�3:� �'r��:�8�k�{�3���	��	�딘�,��>;�Z�c���2����k ��m��ɰ�|W���j�s��r�uA (n3��s  �8�	���3[��֪�	q��i�Jv���|l$�MOt)��Û�� p%e.�PL06ㄠ���8,K����k{�z���Z@I	�$�O�ԯ�\ٵ�~/�c ���X�q `P��=��ǚ�?����8� �lr� ��'�納�d�q���>1�s���(�ܧ��Q���vfXCP2�T>�P2	 �����|��V���?�^�W~��ʮ��64�rD_���`�9b��	��:G9�!���ѻmF�K���Q^ @0�dfP	��+�|�!�L��s�������Z����f@�<������+b��⡦#�{����1�	"��9�4��5n��&'�ӣ'IךP^��q-��AP�� �g�����+`�,��Yz�Z����E������-va^��?
G�QKOR�a3�Dv�N�F���qA�Lv�O�&��x���R�9�c�k�:6��٦N�`��m�$+�෠����e��o��	%�|��س�a�A��B�����P�Pw\ ��]t�� )�<'m:S���]�(k��0���"/9� kD���;� �Q�U�ְfP{���x%��1� F�F���8 �7�5�r�a&,5�-�N��>����G��eC�)�x����knLPB' �a����+qL��=K�-�Ji�{���_��EuM�8QN2Y%�6u^ �&`�S��'	�,��3�s��ez H�!�J��	pI�0@� ����`-�
 &�D/�i�����X\8�b�ɨ� N�qtB=tt��9� J�r���"gNɔ���~�y%x�7z�>!�&��&����4@y���ˇ*�'���KQ4��N��1���I������V�6A�U���w!���k}b D'I��pb�h��0QP��5���0S�q�kAW�#��%>{�c~�vІ��dނPD-��2��8F6�>�˒�Qߜ1Le�җ_~Yij-�t���7��(
Q �˞�9/p�C)egQ����W��y����7����UhZ�A}��'��` ���uh,��#0�6a��=��믿�?��S۔	����9/`T�E�
��e�KX�.0��'�nLs������V����k���>�;���V��fA�Oഖ�~��~���PZ��խ�'k��\C������V8�Q `�N�d(JDЂ���1�gg�)�s΋CЯ��Z���O���GYd�u�#�}��g�a-M�2���5�h@��Fe��SD�T����?������F� (x��]�(.� �������	Bj�D����姟~��?��Xp �'s�hY�߲�z�y�P���Py�i�`=��ղ�ql�u� $AP����`� �I@��o������� �E)L�$Xl>��6�@յ@���-@bD��e�3 hIN�ڦ{��A��:�r�$�bP���c�o �oB[�v�V8>�b�������0���2�ֆ��)�Z�)Q��A469�:,P�2�j.H-X�UFj�hÍ�>�֔�*��D�d� Y�0�GRi�h�sZL�'� ��Z��%�@<e����p�ⲣ  �vO>�� �(:FT�����$(�k`�������gri1���E�Ȳ�ʐ�@�DiNȰ��3
�y�� ���[�O�O��)��t�u`��Y�Ig��Xs\-�z��"�xO�� � �� d�Ӛ��z���� �q�ӳ�'A�Xe=����zf^{���>�����<k=87���2B�PS�����8X� (�ލ�h��o���=�`����
 L��G@U
JB�	�c�<k=8/���9��6<�6�ˆ�8*;4��	�y��^m���FZ ZK6�eW4�9��~ � �o�\>mڴiCQs=��	��fh�<��e�	Lvշ�  � ! Jo�D ����H�zQBsmus�փ㵨���qW6Lc�ң��N�eO��S���|% <Ak_��(�����0 �� D��FL��[���Z�`<5�"ҧ�F�d�8����#��Z� p�x ��O����oB��������n0�o�'u������͏`������&:���������Ё&�[(���\P�io 2ډN�`� �3 0�&��У-2�n��=�[�"��=eg�}}��zpa[�PP�3eʔ�I� `ϩn�3E��ƱN 3��6k=�(Y��E��b��,��"��    IEND�B`�   ECFG      _global_script_classes             _global_script_class_icons             application/config/name          OpenSimplexNoise Viewer    application/run/main_scene,      "   res://OpenSimplexNoise_Viewer.tscn     application/config/icon         res://icon.png  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                       GDPC
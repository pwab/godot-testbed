GDPC                                                                                 <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      �Q!����|M�   res://atom.gd.remap  <             �d�5/ǆ2���c��'   res://atom.gdc         P      ��[.r���\�d9�
   res://atom.tscn P      s      ��l1�eʩ+au�k   res://default_env.tres  �	      
      �?�թ+Ev�/h�!b�   res://icon.png  �<      �      �~dg`!����I�҃   res://icon.png.import   �!      �      �`���6��w{ǲI�?   res://project.binary@J      �      � �$�%�\������   res://source.gd.remap   @<      !       �H�G��V �4Q�mþ   res://source.gdc�#      |      kyd��4��4�4�X   res://source.tscn   @'      �      �c#_�O�=PC��*��0   res://static_rect.gd -              ��ُ ��	���B~   res://static_rect.tscn   -            �Z^Ow-UhGy"��K   res://world.gd.remapp<               !��*(�۩����n   res://world.gdc �0      �      ��Դ�����-Q   res://world.tscn�7      �      G�z��Y�H]bx"�r�        GDSC            e      ��������τ�   �醶   �����Ŷ�   ����Ķ��   ������������ζ��   ���������¶�   ����������Ӷ   ζ��   ������������϶��   �������Ŷ���   ����׶��   �������ض���   ϶��   ���Ӷ���   ��������   ����������Ӷ                                                           "      .      :      ;   	   B   
   P      T      U      [      5TT=�  �  LNMT:=�  �  T:=�  �  LNNN�  MT7=�  �  LMP�  P�  T7=�  �  LMP�  P�  TT3�	  L�
  MR�  &�  P�  �  �  P�  �  R�  �  LM�  T3�  LMR�  �  L�  N�  N�  M[[gd_scene load_steps=3 format=2]

[ext_resource path="res://atom.gd" type="Script" id=1]

[sub_resource type="CircleShape2D" id=1]

custom_solver_bias = 0.0
radius = 5.0

[node name="atom" type="RigidBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
mode = 0
mass = 1.0
friction = 1.0
bounce = 0.5
gravity_scale = 1.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = true
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0
script = ExtResource( 1 )
_sections_unfolded = [ "Angular", "Collision", "Linear", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]
radius = 5
color = Color( 0.613174, 0.689373, 0.917969, 1 )

[node name="collision_shape" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )


             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_md5="ae7e641067601e2184afcade49abd283"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDSC            r      ������������τ�   �������������Ҷ�   �����϶�   ���������׶�   ������¶   ��������׶��   �������������������������¶�   �������¶���   ����¶��   ��������ζ��   ����������������Ҷ��   ������������������������¶��   �����������������Ҷ�   �������������������Ѷ���   �������ض���   �������Ӷ���             input_event       .         _on_click_area_input_event        _on_drag_area_input_event         ui_touch                         	      
                  *      +   	   ,   
   7      @      D      E      F      Q      Z      ^      _      c      i      5TT7=�  TT3�  LMR�  S�  P�  L�  NS�  N�  M�  S�  P�  L�  NS�  N�  MTTT3�  L�  N�  N�	  MR�  &�  P�
  L�  MR�  �  �  TTT3�  L�  N�  N�	  MR�  &�  P�  L�  MR�  �  �  �  &�  R�  &�  6�  R�  �  �  �  P�  [    [gd_scene load_steps=4 format=2]

[ext_resource path="res://source.gd" type="Script" id=1]

[sub_resource type="CircleShape2D" id=1]

custom_solver_bias = 0.0
radius = 14.6325

[sub_resource type="CircleShape2D" id=2]

custom_solver_bias = 0.0
radius = 365.286

[node name="source" type="KinematicBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
script = ExtResource( 1 )

[node name="polygon" type="Polygon2D" parent="." index="0"]

polygon = PoolVector2Array( 0, -10, -10, 10, 10, 10 )
uv = PoolVector2Array(  )
color = Color( 1, 1, 1, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation = 0.0
invert_enable = false
invert_border = 100.0

[node name="click_area" type="Area2D" parent="." index="1"]

input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"

[node name="collision_shape" type="CollisionShape2D" parent="click_area" index="0"]

shape = SubResource( 1 )

[node name="drag_area" type="Area2D" parent="." index="2"]

input_pickable = true
gravity_vec = Vector2( 0, 1 )
gravity = 98.0
linear_damp = 0.1
angular_damp = 1.0
audio_bus_override = false
audio_bus_name = "Master"

[node name="collision_shape" type="CollisionShape2D" parent="drag_area" index="0"]

shape = SubResource( 2 )


             [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 50.0817, 49.9483 )

[node name="static_rect" type="StaticBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0

[node name="polygon" type="Polygon2D" parent="." index="0"]

polygon = PoolVector2Array( -50, -50, 50, -50, 50, 50, -50, 50 )
uv = PoolVector2Array(  )
color = Color( 0.40625, 0.40625, 0.40625, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation = 0.0
invert_enable = false
invert_border = 100.0

[node name="collision_shape" type="CollisionShape2D" parent="." index="1"]

shape = SubResource( 1 )


 GDSC          -   %     ���ӄ�   ���������Ӷ�   �����������Ӷ���   ����������������Ӷ��   ����������Ӷ   ��������������Ŷ   ��¶   ������Ŷ   �����϶�   ߶��   ����������������¶��   �����Ҷ�   �����������Ӷ���   ��������������������Ӷ��   �������Ӷ���   �����������ض���   ζ��   ϶��   ��������Ҷ��   ���������������Ӷ���   ���������۶�   ��Ŷ   �������������Ӷ�   ����������������¶��   �����Ӷ�   �������ض���   �߶�   ��������ڶ��   ���¶���   ����������Ӷ   ����������Ķ   �������嶶��      res://atom.tscn       res://source.tscn         res://static_rect.tscn        display/window/size/width         display/window/size/height                      �        �                                                                              )      1   	   7   
   8      9      ?      H      L      M      V      _      `      a      g      p      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *   	  +     ,   #  -   5TT=�  ?LMT=�  ?L�  MT=�  ?L�  MTT=�  �  L�  P�  L�  MN�  �  P�  L�  MMT=�  HITTT3�  LMR�  )�	  �@  L�  MR�  �
  LM�  �  )�	  �@  L�  MR�  �  P�  L�  LMMTTT3�
  LMR�  =�  �  P�  LM�  �  P�  L�  L�!  L�  N�  P�  �  MN�!  L�  N�  P�  �  MMM�  �  L�  M�  1�  TTT3�  LMR�  =�  �  P�  LM�  �  P�  L�  L�!  L�	  N�  P�  �	  MN�!  L�	  N�  P�  �	  MMM�  �  L�  M�  1�  TTT3�  L�  MR�  =�  �  P�  LM�  �  P�  L�  �  L�!  L�
  N�
  MN�  MM�  �  L�  M�  1�  TTT3�  LMR�  )�  �  R�  �  L�  P�  M�  S�  �  P�  �6  L�  P�  L�  P�  MMT[       [gd_scene load_steps=2 format=2]

[ext_resource path="res://world.gd" type="Script" id=1]

[node name="world" type="Node2D" index="0"]

script = ExtResource( 1 )
_sections_unfolded = [ "Material", "Transform", "Visibility", "Z" ]

[node name="timer" type="Timer" parent="." index="0"]

process_mode = 0
wait_time = 0.05
one_shot = false
autostart = true

[node name="ui" type="CanvasLayer" parent="." index="1"]

layer = 1
offset = Vector2( 0, 0 )
rotation = 0.0
scale = Vector2( 1, 1 )

[node name="fps_label" type="Label" parent="ui" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 14.0
rect_scale = Vector2( 3, 3 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[connection signal="timeout" from="timer" to="." method="_on_timer_timeout"]


      [remap]

path="res://atom.gdc"
 [remap]

path="res://source.gdc"
               [remap]

path="res://world.gdc"
�PNG

   IHDR   @   @   �iq�  qIDATx��{pTU����~���I�A	$2$�H E, 
(�>��ؙ\vvqtwj�ف�}��H�S�̨�*����0��
��S^�
B!$��t������!��N��t�_U�n�9�;������sסO�'}��QA!~'i�E�Dw2��P��w=�%EY}���c�˕�ɢ�!u�$m�)��qz�ȷD�~F����y��ly���n\s�i�}�����$!�Pi��4:$YF�V��g%H0��u��� *�.����zr�W֥Ô���V-���>��Z�G�d�����B I2*��FK��A� !��_�#1��'��:� �MH��V�ܯ~\mV���-�HZYZ(@Vk���H�
�V�@�ZYZ(Ձd��V����akPxP�������:[�$�����KJ00u|	�Y�^��43u|	I	�7��U ��������=e<��*bX�@�(�¦���C��ŢG�[6!AE���%v)g���X[�EϘ;�hh�L徱E!Q^�ʻ{�9|��qy&�*�����OEu]�r��Y�-�Ⱥ�8x����F�2����,���u��n�ɩs�1�7�H���w�/���/��x=��3���ɜ�y����ov)���������%\� ��6��%-A�̒L�����y<��JZ�Θ��i޴��HN�g�;�x{Ou��� �r���;�L�@3�Ņ�3f�������<����%�"91�iG�R�ض ����8�L��2��cu̽+��/[��}��˖�u!�tȼ��XS�]k�	:5�������3��t��ڝ��W������(�]�7uĊ�:��� �
��֨ew��#VD��j���L�NO��Z��CfG���N}�Q��_>�ߟ6�݇��ݻ��t�
z���/z��&�Mu���F[Ԋ�Fe���&;���S����͍�<^����9L�= ��c+���\1bړ
���6��?������_�������%���wSZ\@^N&�y���*7oiT�`^� ����z�<���'��{�/`Ъ��������x��;��r4[�eFR��b�̛�ί/�v� v�n�G�����qx�,�t��5�}2�7�A�u�/p���{x�e�Y�e��9�9�'�X2o&��>?p�W��� �dֿ�sj��<���@ׯ�o���	P���yё��Ǡ��l�wy���}l����l�WZB��h�v�˗�C�լ�v��� ���o�x��W7�|�U�N#�j�/�׫���=��qŅ���*�B��#�mn��k��=�4lް���E���'b�����\�:��6_X44Y�6�1� ��{;3� �lSM�']a��ǻ)��a�LML�OLK�P^YÇ��7��� ���:Ԓ�s�T���QK
���:�����(p��
����ݹ)��ҺՔ��;7�W�n�bÕ^�G4�ӧ{Y��2��=�Ѫ$��CI��AC����c���z����df��dHZ�/�k���`m�+ǁ�8�>?�toD�#^�u���8/�E�1 ��ƽ��ܓ�ʻ{����ͅ�����\`����J�(+�������hvz{(�T<��`Oq�ed�8w��-f��G���l6n�Ȃ���HY.=QGzb�����,�������l��~�ŋs��9��q,-+�F��sH,^�b�n7�~����� 8�N^�u����������dV/,e��RJ����Oaf߾�����8��A����,��r�n7����{8���b@AEE��[��]�< ���|s�$�$A�9�������}�X,TTT �`pJ���쀦k�O�V2]���d�~�ds�ф�{t��d�{|��hlss���|

��.%Ib����>v���̙3���*����ū���Ob�
+����2����b�op���<��̝�q�ͬX����HO7S�@+W�@A��'�P=6A�3m����xfZ���!pz�l=ZǺ��!��=�������yj�`^x�e�4*E��e�>��*K������p���O��
�Z����9|�`�ח1^[_�8u9d_@a͞j��&˨�j���B�Yb�7��z5�PX�eM�r#�y3��'�b@�-@����Q�I�Ë�����\�쥢������e$�(�H�d�`2h04�����j����r����7ٹb�`4h�I�c� c�<-.~�ցee%1:��c:���fN��|`ţ%dܰ(�j�`ux9��ƀ-9ƞm7Up��*�����x��O�?��Ia�?�@٦���RY��P������_Tauxivt]��=��؋%��|� *��r���uV%�Ft*	w���,	2���l�;+�����|J�R�%A ��N%��%ꬮ�A�,��C����lms`��9,f���
���7�ʜ�C%K�\qt�7��\q��%�7��a����.u��h���j�-��BÇ���n��7�UO|s�������iq�P�}к0{i�?4! 9N�A�"N�U͎�B1<#���z�������)&��=�2�8U߽����2No��x�
�V�ɠ!��s�^�U���K=wp�Z�:<��khs�hluc���:�8<~?W�^v�m
Y�(+�Lck���Ԭ�7G�5����3�s�v~��I���ǐ�<�����~(�xk���ǋk61,#��(�v:G-D{$xXF"/��ԫ���0�c�1r�SY2o&*Y���g�m+<RT��_�c�p3�}����EW>�
Wo����ҧf�o��՝���[��f���O��m2���-�����eȩy#�@��<�t���5L9���C�����r?O�����lb��!�pR�--,e-�v�J���>TF�	�B�R�Y�3����i����t#'j[8Uߊ�~W&Rtj���$�s��2�Lj���6;�?���>��?�%rG'�'t��e&�UĬ)�_2�,*TYlT_qP�좱͍��M�ˇ� Th�vL.I�F�z�L�^MZ�s��,���IK@��@�/��a�_��H9���;8���VMqa.%����#7�L�)��'���T�5r��y�WTs�L5�(z�pDuF(�O�������4j�&2R�$���kQIƤ�p���N ����fw���LC��/�9�͢RP��(J�������[���op+P�����B=�_&���i�B��t���w����a��k�.	X�(J��q}'ZA0���q�(J@�j���5jԨUw|d�!�m�J�?n{(
N����s�o�~�]��S}|�dP�=.%�B�;��h��Y?>����Bvۮ��o=,�i]��IZ�w��˳��lY��u���NCWj^��.%e���O-T&�(:��s������|�3�y?��c�ٓ��Z}�s�����J~u�qK    IEND�B`�      ECFG      application/config/name      
   LiquidMark/n   application/run/main_scene         res://world.tscn   application/config/icon         res://icon.pngn    display/window/size/width     �         display/window/size/height     8         display/window/size/test_width               display/window/size/test_height     �         display/window/dpi/allow_hidpi            display/window/vsync/use_vsync          +   display/window/handheld/emulate_touchscreen            display/window/stretch/mode         2da    display/window/stretch/aspect         keep   input/ui_touch�              InputEventMouseButton o       resource_local_to_scene           resource_name a           device               alt           shift             control          meta          command           button_mask              position              global_position               factor       �?   button_index            pressed           doubleclick           script"       )   rendering/environment/default_environment          res://default_env.tres  0   rendering/quality/dynamic_fonts/use_oversampling           GDPC
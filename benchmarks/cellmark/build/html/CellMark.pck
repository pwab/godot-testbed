GDPC                                                                                 <   res://.import/cell.png-d2e896f835a3e7099cb9e14019efc1fe.stex0      )      j��-'\��e� �F   res://cell.png  �{      ]?      �����`���
a�   res://cell.png.import   `	      �      ��uY��	z�T#L�<   res://cell.tscn `      �      �xD�8J��E��Վ   res://default_env.tres  P      
      �?�թ+Ev�/h�!b�    res://performance_grid.gd.remap p{      +       |;�m�ɇ5l�Y�:o�   res://performance_grid.gdc  p      M      �[.�E�u#���Ҹ]%   res://project.binary �      �      E8�Rn�50�|/�U�   res://wall.tscn �      U      * 4Y6z�(�ͨ�]�   res://world.gd.remap�{               !��*(�۩����n   res://world.gdc  !            ���(I�mG鈭��5   res://world.tscn@,      "O      e�O�/m ���#�1�        GDST                  PNG �PNG

   IHDR           szz�  �IDATX���Oh���?��?�P�d�A�k#Fc�Յ(h���t�S��L6bV\a\?�Yȓ�f#(ҍ�{�F�F��J��jB�c����~�̢��IڴF��Y$����9�{�Q"�R�>$|� � __ T�����;���V?��c�k�g����H:�V�N��Z�R�Ո��$	�ݻ'�@��	X�Ǒ^ ~��m[r�����KۑM�N�%��I&��TX��O5��w��|������F.\� �RI>|� ��뺲��&�RI�٬nvvVlۖ�/�ħ8����HӶm	�Bȓ'Od�h���<�Z�*"R(|Glۖx<���X?��:55���y�СC��ZkqG\��q��hH���q|u]�wfhhH ���r��Y�vbK$��{��i�ϟ?���G7����/آ&~�]l����2l��j��y]Nt����ƿ�]p��ݻ�7\��?jh��]�����D�j;�3@4`qq�5Zk���&��RX��R�@ �-��{޽{���J)�āu�[3�
�ZK���2*m�x��QL*2�� u l�N�200 ���"�3C�J)���dtt����cY�@`��� �b1X'�o��t:-�lVDD���4�M��V��y��ܹ�'����Ouc}�٬��iI�R��j߾}H�T��&��ȣG��ٳg����X,擓a�N�)�J�իWxa_�>}�x<�	J��x��%SSS�Z59��h���Av��M2��\.���Ө���<������0��V�����9Z�����q����@�d2ɥK�AD��j&���,˯�H$@�R�2H�V�x��B!��n�Z�.G��ĉ]��R8���Gk�d糵����^�w2
�PJq�ڵM�~���/��ի�˵քB���"B�\&�TT-�}"��a1��HD�������T*q���ܹӅbg����Ǐ�m�n�R�\ Pǎ����]E�)�eQ��صkWOG��`pK�,��'O2<<L�X�������#���z�ҳ��7mX��ݻr��A����䤼}�vK5mڲ,9w� �m�mz��O����W�1��)�rY���mLZk����D��[J��������lv(������� �\�̋��n���xKKK $�I���әG���<��;v���ήi�6���guu�X����:]�X,���j�z��Ǵs<dzzzˁ��x<�2#�q�s&"�1��dz�dV�-�J�����$�|��Ǐ3<<�ZggZ:	˨9w��"��L��T*��;>�5��x<�2�=�lɷ�H4�����'��Fm��l��ZL��l�b�8��y�Fn޼)ccc��\.��b��n����
LOO�c��B����M�>̑#Gp]�F����\�]��n���~�������J�fff���i�k9�k/oK���������>{=�p�m��1~    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cell.png-d2e896f835a3e7099cb9e14019efc1fe.stex"

[deps]

source_md5="bd86b797d96018e31ab8b60a61021ad5"

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
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://cell.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]

custom_solver_bias = 0.0
radius = 16.1187

[node name="cell" type="RigidBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
mode = 0
mass = 1.0
friction = 0.0
bounce = 1.0
gravity_scale = 1.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = false
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0
_sections_unfolded = [ "Angular", "Collision", "Linear", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]

[node name="sprite" type="Sprite" parent="." index="0"]

texture = ExtResource( 1 )
_sections_unfolded = [ "Animation", "Material", "Offset", "Pause", "Region", "Transform", "Visibility", "Z" ]

[node name="collision_shape" type="CollisionShape2D" parent="." index="1"]

shape = SubResource( 1 )


         [gd_resource type="Environment" load_steps=2 format=2]

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

            GDSC             {      ������������Ķ��   ����������������¶��   ��������ڶ��   ���¶���   ����������Ӷ   ����������Ķ   �������嶶��   ������������ڶ��   �����������嶶��   ������������ڶ��   �������������������嶶��   �����������ڶ���   �����������������������嶶�   ���������������ڶ���   ������������������������嶶   ������������ڶ��   ����������������������                   	      
                        .   	   /   
   0      A      B      C      T      U      V      g      h      i      5TT3�  LMR�  �  S�  P�  �6  L�  P�  L�  P�  MM�  �  �  S�  P�  �6  L�  P�  L�  P�  MMT�  �  S�	  P�  �6  L�  P�  L�  P�
  MM�  �  �  S�  P�  �6  L�  P�  L�  P�  MM�  �  �  S�  P�  �6  L�  P�  L�  P�  MMT�  �  S�  P�  �6  L�  P�  L�  P�  MM[   [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 539.888, 19.9955 )

[node name="wall" type="StaticBody2D" index="0"]

input_pickable = false
collision_layer = 1
collision_mask = 1
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 0.0
__meta__ = {
"_edit_group_": true
}

[node name="collision_shape" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )
_sections_unfolded = [ "Material", "Pause", "Transform", "Visibility", "Z" ]

[node name="polygon_2d" type="Polygon2D" parent="." index="1"]

polygon = PoolVector2Array( -540, -20, 540, -20, 540, 20, -540, 20 )
uv = PoolVector2Array(  )
color = Color( 0.145098, 0.145098, 0.164706, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation = 0.0
invert_enable = false
invert_border = 100.0
_sections_unfolded = [ "Invert", "Material", "Pause", "Texture", "Transform", "Visibility", "Z" ]


           GDSC   .      N        ���ӄ�   ������醶���   ���������Ӷ�   ����Ŷ��   �����϶�   ����������Ѷ   ���������Ѷ�   �����Ŷ�   ������Ѷ   Ŷ��   ���Ӷ���   �߶�   ���ö���   ���ζ���   ������Ӷ   ���¶���   ��������������Ӷ   �������������¶�   ��������������Ŷ   ���������Ŷ�   ���ڶ���   �������������Ӷ�   �������Ӷ���   �����������ض���   �����������ض���   ���϶���   ��������Ҷ��   �����Ҷ�   �����������������Ŷ�   �����¶�   ߶��$   ����������������������������������ƶ   ����Ӷ��   ��������ζ��   �����������Ķ���$   ��������������������������������ƶ��$   �������������������������������ƶ���    ������������������������������ƶ   �������ζ���   ����������Ķ   ������������Ӷ��    ���������������������������ƶ���   �������Ӷ���   �����������Ӷ���   ����������������Ӷ��   �����������Ӷ���                res://cell.tscn       >         Ready :)             amount_of_cells       Cells:                  impuls        Impulsed at       
     
         2                                                                          !   	   '   
   .      /      0      <      A      G      M      V      \      k      q            �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (     )     *     +     ,   %  -   .  .   D  /   N  0   U  1   V  2   W  3   ]  4   m  5   r  6   w  7   x  8   y  9     :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   
  N   5TTT7=�  �  LNMT7=�  ?L�  MT7=�  HITTT3�  LMR�  �  L�  N�  MTTT3�  L�  N�  HIMR�  =�  �  �  &�  �  R�  )�	  �  R�  �  �  �6  L�	  M�  '�  �  R�  �  �  �  �6  L�  P�
  LMM�  '�  �  R�  �  �	  �  �6  L�  HIM�  �  �  �7  L�  M�  �  �  S�  �  �  �  P�  S�  �  �  �  P�  �  �
  �  S�  �  �  �  P�  LS�  �  �  �  P�  LMMTTT3�  LMR�  =�  HI�  )�  �  R�  =�  �  P�  LM�  �  P�  L�  P�  LM�  L�!  LN�  MN�!  LN�  MMM�  S�  �  P�  L�  M�  �  P�  L�  M�  �  )�  �  R�  �  P�  L�  MTTT3�  L�  MR�  )�  �@  L�  MR�  =�  �  P�  LM�  �  P�  L�  L�!  L�  N�  MN�!  L�  N�  MMM�  S�  �  P�  L�  M�  �  P�  L�  MTTT3�  LMR�  =�   S�  �  �  �!  �"  P�   �  �  L�   M�  �  L�  MTTT3�#  LMR�  &�  P�
  LMR�  �  LM�  �  L�  MTTT3�$  LMR�  �  L�  M�  �  L�  MTTT3�%  LMR�  &�  P�
  LMR�  =�   S�  �  �  �&  �'  P�   �  )�  �  R�  �  P�(  L�  N�  L�!  L�   N�   MN�!  L�   N�   MMM�  �  L�  NH�   IMTTT3�)  LMR�  �*  LMP�+  L�*  LMP�,  LMP�-  LMMT[   [gd_scene load_steps=4 format=2]

[ext_resource path="res://world.gd" type="Script" id=1]
[ext_resource path="res://wall.tscn" type="PackedScene" id=2]
[ext_resource path="res://performance_grid.gd" type="Script" id=3]

[node name="world" type="Node2D" index="0"]

script = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="ui" type="HBoxContainer" parent="." index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1924.0
margin_bottom = 1080.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_constants" ]
__meta__ = {
"_edit_lock_": true
}

[node name="body" type="Container" parent="ui" index="0"]

editor/display_folded = true
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1080.0
margin_bottom = 1080.0
rect_min_size = Vector2( 1080, 1080 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility" ]

[node name="borders" type="Container" parent="ui/body" index="0"]

editor/display_folded = true
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1080.0
margin_bottom = 1080.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility" ]
__meta__ = {
"_edit_group_": true
}

[node name="top_wall" parent="ui/body/borders" index="0" instance=ExtResource( 2 )]

position = Vector2( 540, 20 )
_sections_unfolded = [ "Collision", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]

[node name="bottom_wall" parent="ui/body/borders" index="1" instance=ExtResource( 2 )]

position = Vector2( 540, 1060 )
_sections_unfolded = [ "Collision", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]

[node name="left_wall" parent="ui/body/borders" index="2" instance=ExtResource( 2 )]

position = Vector2( 20, 540 )
rotation = 1.5708
_sections_unfolded = [ "Collision", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]

[node name="right_wall" parent="ui/body/borders" index="3" instance=ExtResource( 2 )]

position = Vector2( 1070, 540 )
rotation = 1.5708
_sections_unfolded = [ "Collision", "Material", "Pause", "Pickable", "Transform", "Visibility", "Z" ]

[node name="menu" type="Panel" parent="ui" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1084.0
margin_right = 1924.0
margin_bottom = 1080.0
rect_min_size = Vector2( 840, 1080 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Anchor", "Focus", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_styles" ]

[node name="vbox" type="VBoxContainer" parent="ui/menu" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 5.0
margin_top = 40.0
margin_right = 205.0
margin_bottom = 300.0
rect_scale = Vector2( 4, 4 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_constants" ]

[node name="restart_button" type="Button" parent="ui/menu/vbox" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 200.0
margin_bottom = 20.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Restart"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="random_cell_button" type="Button" parent="ui/menu/vbox" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 24.0
margin_right = 200.0
margin_bottom = 44.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Spawn random cell"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="spawn_box" type="HBoxContainer" parent="ui/menu/vbox" index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 48.0
margin_right = 200.0
margin_bottom = 68.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_constants" ]

[node name="multiple_cells_button" type="Button" parent="ui/menu/vbox/spawn_box" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 144.0
margin_bottom = 20.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Spawn multiple cells"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="spawn_slider" type="HSlider" parent="ui/menu/vbox/spawn_box" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 148.0
margin_right = 198.0
margin_bottom = 16.0
rect_min_size = Vector2( 50, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 0
min_value = 2.0
max_value = 200.0
step = 1.0
page = 0.0
value = 20.0
exp_edit = false
rounded = false
editable = true
tick_count = 0
ticks_on_borders = false
focus_mode = 2
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_icons", "custom_styles" ]

[node name="reproduction_button" type="Button" parent="ui/menu/vbox" index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 72.0
margin_right = 200.0
margin_bottom = 92.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Reproduction"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="move_box" type="HBoxContainer" parent="ui/menu/vbox" index="4"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 96.0
margin_right = 200.0
margin_bottom = 116.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_constants" ]

[node name="move_cells_button" type="Button" parent="ui/menu/vbox/move_box" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 95.0
margin_bottom = 20.0
rect_min_size = Vector2( 95, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "Lets move"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="move_slider" type="HSlider" parent="ui/menu/vbox/move_box" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 99.0
margin_right = 194.0
margin_bottom = 16.0
rect_min_size = Vector2( 95, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 0
min_value = 0.0
max_value = 1000.0
step = 1.0
page = 0.0
value = 20.0
exp_edit = false
rounded = false
editable = true
tick_count = 0
ticks_on_borders = false
focus_mode = 2
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_icons", "custom_styles" ]

[node name="console" type="TextEdit" parent="ui/menu/vbox" index="5"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 120.0
margin_right = 200.0
margin_bottom = 180.0
rect_min_size = Vector2( 0, 60 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
text = ""
readonly = true
highlight_current_line = false
syntax_highlighting = false
show_line_numbers = false
highlight_all_occurrences = false
override_selected_font_color = false
context_menu_enabled = true
smooth_scrolling = true
v_scroll_speed = 80.0
hiding_enabled = 0
caret_block_mode = false
caret_blink = false
caret_blink_speed = 0.65
_sections_unfolded = [ "Anchor", "Caret", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_icons", "custom_styles" ]

[node name="performance_grid" type="GridContainer" parent="ui/menu" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 28.0
margin_top = 774.0
margin_right = 222.0
margin_bottom = 842.0
rect_min_size = Vector2( 0, 50 )
rect_scale = Vector2( 4, 4 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
columns = 3
script = ExtResource( 3 )
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_constants" ]
__meta__ = {
"_edit_group_": true
}

[node name="process_caption" type="Label" parent="ui/menu/performance_grid" index="0"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 80.0
margin_bottom = 14.0
rect_min_size = Vector2( 80, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Process"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="fps_caption" type="Label" parent="ui/menu/performance_grid" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 84.0
margin_right = 146.0
margin_bottom = 14.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "FPS"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="fps_label" type="Label" parent="ui/menu/performance_grid" index="2"]

modulate = Color( 0.53125, 0.802246, 1, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_right = 190.0
margin_bottom = 14.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
align = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="process_label" type="Label" parent="ui/menu/performance_grid" index="3"]

modulate = Color( 1, 0.578125, 0.578125, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 18.0
margin_right = 80.0
margin_bottom = 32.0
rect_min_size = Vector2( 80, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="rigids_caption" type="Label" parent="ui/menu/performance_grid" index="4"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 84.0
margin_top = 18.0
margin_right = 146.0
margin_bottom = 32.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Rigids"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="rigids_label" type="Label" parent="ui/menu/performance_grid" index="5"]

modulate = Color( 0.53125, 0.802246, 1, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_top = 18.0
margin_right = 190.0
margin_bottom = 32.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
align = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="physics_caption" type="Label" parent="ui/menu/performance_grid" index="6"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 36.0
margin_right = 80.0
margin_bottom = 50.0
rect_min_size = Vector2( 80, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Physics"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="collisions_caption" type="Label" parent="ui/menu/performance_grid" index="7"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 84.0
margin_top = 36.0
margin_right = 146.0
margin_bottom = 50.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Collisions"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="collisions_label" type="Label" parent="ui/menu/performance_grid" index="8"]

modulate = Color( 0.53125, 0.802246, 1, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_top = 36.0
margin_right = 190.0
margin_bottom = 50.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
align = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="physics_label" type="Label" parent="ui/menu/performance_grid" index="9"]

modulate = Color( 1, 0.578125, 0.578125, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_top = 54.0
margin_right = 80.0
margin_bottom = 68.0
rect_min_size = Vector2( 80, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="islands_caption" type="Label" parent="ui/menu/performance_grid" index="10"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 84.0
margin_top = 54.0
margin_right = 146.0
margin_bottom = 68.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
text = "Islands"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="islands_label" type="Label" parent="ui/menu/performance_grid" index="11"]

modulate = Color( 0.53125, 0.802246, 1, 1 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 150.0
margin_top = 54.0
margin_right = 190.0
margin_bottom = 68.0
rect_min_size = Vector2( 40, 0 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
align = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="timer" type="Timer" parent="ui/menu/performance_grid" index="12"]

process_mode = 0
wait_time = 0.01
one_shot = false
autostart = true

[connection signal="button_up" from="ui/menu/vbox/restart_button" to="." method="_on_restart_button_button_up"]

[connection signal="button_up" from="ui/menu/vbox/random_cell_button" to="." method="_on_random_cell_button_button_up"]

[connection signal="button_up" from="ui/menu/vbox/spawn_box/multiple_cells_button" to="." method="_on_multiple_cells_button_button_up"]

[connection signal="button_up" from="ui/menu/vbox/reproduction_button" to="." method="_on_reproduction_button_button_up"]

[connection signal="button_up" from="ui/menu/vbox/move_box/move_cells_button" to="." method="_on_move_cells_button_button_up"]

[connection signal="timeout" from="ui/menu/performance_grid/timer" to="ui/menu/performance_grid" method="_on_timer_timeout"]


              [remap]

path="res://performance_grid.gdc"
     [remap]

path="res://world.gdc"
�PNG

   IHDR           szz�   	pHYs   �   �pS�  9�iTXtXML:com.adobe.xmp     <?xpacket begin="﻿" id="W5M0MpCehiHzreSzNTczkc9d"?>
<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 5.6-c138 79.159824, 2016/09/14-01:09:01        ">
   <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
      <rdf:Description rdf:about=""
            xmlns:xmp="http://ns.adobe.com/xap/1.0/"
            xmlns:dc="http://purl.org/dc/elements/1.1/"
            xmlns:photoshop="http://ns.adobe.com/photoshop/1.0/"
            xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/"
            xmlns:stEvt="http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"
            xmlns:tiff="http://ns.adobe.com/tiff/1.0/"
            xmlns:exif="http://ns.adobe.com/exif/1.0/">
         <xmp:CreatorTool>Adobe Photoshop CC 2017 (Windows)</xmp:CreatorTool>
         <xmp:CreateDate>2018-01-06T01:19:03+01:00</xmp:CreateDate>
         <xmp:ModifyDate>2018-01-06T23:40:32+01:00</xmp:ModifyDate>
         <xmp:MetadataDate>2018-01-06T23:40:32+01:00</xmp:MetadataDate>
         <dc:format>image/png</dc:format>
         <photoshop:ColorMode>3</photoshop:ColorMode>
         <xmpMM:InstanceID>xmp.iid:6298b409-436c-5740-8b9f-a97f859d93e4</xmpMM:InstanceID>
         <xmpMM:DocumentID>xmp.did:8262813b-d7a0-6a48-aacd-c45705a8416d</xmpMM:DocumentID>
         <xmpMM:OriginalDocumentID>xmp.did:8262813b-d7a0-6a48-aacd-c45705a8416d</xmpMM:OriginalDocumentID>
         <xmpMM:History>
            <rdf:Seq>
               <rdf:li rdf:parseType="Resource">
                  <stEvt:action>created</stEvt:action>
                  <stEvt:instanceID>xmp.iid:8262813b-d7a0-6a48-aacd-c45705a8416d</stEvt:instanceID>
                  <stEvt:when>2018-01-06T01:19:03+01:00</stEvt:when>
                  <stEvt:softwareAgent>Adobe Photoshop CC 2017 (Windows)</stEvt:softwareAgent>
               </rdf:li>
               <rdf:li rdf:parseType="Resource">
                  <stEvt:action>saved</stEvt:action>
                  <stEvt:instanceID>xmp.iid:6298b409-436c-5740-8b9f-a97f859d93e4</stEvt:instanceID>
                  <stEvt:when>2018-01-06T23:40:32+01:00</stEvt:when>
                  <stEvt:softwareAgent>Adobe Photoshop CC 2017 (Windows)</stEvt:softwareAgent>
                  <stEvt:changed>/</stEvt:changed>
               </rdf:li>
            </rdf:Seq>
         </xmpMM:History>
         <tiff:Orientation>1</tiff:Orientation>
         <tiff:XResolution>56134/10000</tiff:XResolution>
         <tiff:YResolution>56134/10000</tiff:YResolution>
         <tiff:ResolutionUnit>2</tiff:ResolutionUnit>
         <exif:ColorSpace>65535</exif:ColorSpace>
         <exif:PixelXDimension>32</exif:PixelXDimension>
         <exif:PixelYDimension>32</exif:PixelYDimension>
      </rdf:Description>
   </rdf:RDF>
</x:xmpmeta>
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                            
<?xpacket end="w"?>���    cHRM  z%  ��  ��  ��  u0  �`  :�  o�_�F  �IDATxڤW�k[=�gS�N�!��cS�֍��Rx�v�E�h�0�d']�/�?@�B�ҕP�nĥ�+h6� W
&���;�����2�N~���!���=߹��>��$�	 �x �=�o  >�} - [ ��L�����	�� U(X��Y�TX*�X���l6����.����c  �p�  ��2=����2��B�@���.�	4�;�� � �z�΍���͛l����z���Q����v��j�~����r�L�5��a 6ϝ;��eNOO _�|��G)E)%�Rv����R.���fC  K#�o^�vM6`�X�+�(�`EB��}�aH!�]QY0sss�F����U�A�R蜿;s�L`��y�&qZx�5�F��0L�⚈�m��{{{ج0)�L��i�N��j�^� /\�`�����F�EI�t�@�� 6�v|��QQJ��ǄR��}E�tl� ph���ݥR�A��P��cY0�p]�ڬ2��z�y��� �ahU���G���paa��?NܒQ�@��m��V�U�d�ߧ��G����RJ?~<�	��� O�a�Z��P(����/^$ ��m*��B����|��53��P+>u�5'�q�"�v�M l6��Wߌ�{�^*����޽{���It����<}�4O�<�+W���ׯ�S��� k�uEP�T��4���߿���0��' ;v��b�w������<y�ϟ?�Ӈah��h'�"`�T�.����0�� ��b�XL ������<_�xaEk�E�XA�q �5��z���2����N��������ۄ��0<�.����>���)hiAX� b� s�>|8�=z�˗/'D�����5��RJv�ݡ |��RJ���p}}=q��ƍ(mC�Q���6����gϞ��ի����P5,NMMQ��Q@_�#_�z5��ƟN��>�,LJ)����b]��	��HJ������ׯ_#so���p�i �xA:{��ea�����޸q��.]J/�ĝ8���=��P~�)��g ����ސh  �l6��̀����Po���;�%����������9{
��xZM+ޤܺu�333t]w|S����fC�Ө����ӧO9;;���y���Mޖ0�2��&�j51�!���'޿�KKK�;��&B���2F�������<
�T\\\���:+�J�h�|��4�-�����U��d�Vc�T;�
!0,�D ��7n�J������ ���r�'�    IEND�B`�   ECFG      application/config/name         CellMark   application/run/main_scene         res://world.tscn   application/config/icon         res://cell.pngn    display/window/size/width     �         display/window/size/height     8         display/window/size/test_width               display/window/size/test_height     �         display/window/dpi/allow_hidpi            display/window/stretch/mode         2da    display/window/stretch/aspect         keep   physics/2d/default_gravity             !   physics/2d/default_gravity_vector              )   rendering/environment/default_environment          res://default_env.tres        GDPC
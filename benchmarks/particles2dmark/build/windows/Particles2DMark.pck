GDPC                                                                                 <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      u�\��ʕ����   res://default_env.tres  0      
      �?�թ+Ev�/h�!b�   res://fire_knistern.tresP      `      �~�h0n.LS^ܬV/s   res://firework_material.tres�      c      ����b����㣻   res://icon.png  �Q      �;      �Sbw���cB� 8NY�{   res://icon.png.import   �      �      �=��J�mk�hF�8��   res://particles.tscn�      �      ���	�������+�   res://particlesmaterial.tres@            \���/�ݢ�Y���   res://project.binary��      }      �������5'� ��	qR   res://world.gd.remap�Q               !��*(�۩����n   res://world.gdc P!      �      ()F�6t~�hT�cM�   res://world.tscn <      �      *�9�Q2� �&����[gd_resource type="Environment" load_steps=2 format=2]

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

            [gd_resource type="ParticlesMaterial" format=2]

[resource]

render_priority = 0
trail_divisor = 1
emission_shape = 1
emission_sphere_radius = 100.0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = true
spread = 180.0
flatness = 0.0
gravity = Vector3( 0, 98, 0 )
initial_velocity = 100.0
initial_velocity_random = 0.0
angular_velocity = 0.0
angular_velocity_random = 0.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 0.0
radial_accel = 0.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 0.0
damping_random = 0.0
angle = 0.0
angle_random = 0.0
scale = 2.0
scale_random = 0.0
color = Color( 1, 1, 1, 1 )
hue_variation = 0.0
hue_variation_random = 0.0
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false
_sections_unfolded = [ "Angle", "Angular Velocity", "Animation", "Color", "Damping", "Emission Shape", "Flags", "Gravity", "Hue Variation", "Initial Velocity", "Linear Accel", "Orbit Velocity", "Radial Accel", "Resource", "Scale", "Spread", "Tangential Accel", "Trail" ]

[gd_resource type="ParticlesMaterial" load_steps=3 format=2]

[sub_resource type="Gradient" id=1]

offsets = PoolRealArray( 0.692308, 1 )
colors = PoolColorArray( 1, 1, 1, 1, 0, 0, 0, 1 )

[sub_resource type="GradientTexture" id=2]

gradient = SubResource( 1 )
width = 2048

[resource]

resource_local_to_scene = true
render_priority = 0
trail_divisor = 1
emission_shape = 1
emission_sphere_radius = 1.0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = true
spread = 180.0
flatness = 0.0
gravity = Vector3( 0, 50, 0 )
initial_velocity = 200.0
initial_velocity_random = 1.0
angular_velocity = 0.0
angular_velocity_random = 0.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 0.0
radial_accel = 0.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 100.0
damping_random = 0.0
angle = 0.0
angle_random = 0.0
scale = 2.0
scale_random = 0.0
color_ramp = SubResource( 2 )
hue_variation = 0.0
hue_variation_random = 0.0
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false
_sections_unfolded = [ "Angle", "Angular Velocity", "Animation", "Color", "Damping", "Emission Shape", "Flags", "Gravity", "Hue Variation", "Initial Velocity", "Linear Accel", "Orbit Velocity", "Radial Accel", "Resource", "Scale", "Spread", "Tangential Accel", "Trail" ]

             GDST              e  PNG �PNG

   IHDR         ��a  (IDAT8�M�Mou ��g�v;ݗ�����Vb��b��5V*44��	/$F�z�kp��xЄ�!�Ą4-h���FL�m�v�mٙٙ�ٙ�<���sz~����J�×5U?�$�$�(�1t�(��� ��������`e�i���h����z.�r�u �Y��3��L���B�USs*�U]��t"%q���#2i��g�9V����� p��y�_��;wq�锁��P45��H_&	�n@�Qgj�b��\Y��Ν�:w�+�1S'�crԢը���$�D�J���'�s�ޢ��$�rϵ��q�|>�㸼16�t�F5����;��Wț���=sx���yuv�[�Zp���MD�������G�����<�����UTC���������6[M���$���!3�I��7�	�6^b�z!�eym���Wgaկ�U:�" Y�a�~��_���~���,�mPȢ
)1�R�R!Ht���^]Ķ.��ql��^]Čm�D'�
f_
!%:@,$����ҪPY���un��	�fhrt�;`��C�XL�����4#�2_�{��"��, )Cgu���a����02y�T������>vs���
��<��ce������b�s�T�y �����#�~<�c�wv\��6{n��N�b�d�������d�y�������lA�m�Q2U�f�
C�T�H ���!ڻ�X���@2T.�m��X�0+�%�n�ח(f*�<�L? ����w��"J�*�i� ��)�o�>W�����8'ı ���0����΢��ؾ�/�>tE��3    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_md5="c653627786c8c66342e600384e59d37b"

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
               [gd_scene format=2]

[node name="particles" type="Particles2D"]

emitting = true
amount = 8
lifetime = 1.0
one_shot = false
preprocess = 0.0
speed_scale = 1.0
explosiveness = 0.0
randomness = 0.0
fixed_fps = 0
fract_delta = true
visibility_rect = Rect2( -100, -100, 200, 200 )
local_coords = true
draw_order = 0
process_material = null
texture = null
normal_map = null
h_frames = 1
v_frames = 1


   [gd_resource type="ParticlesMaterial" format=2]

[resource]

render_priority = 0
trail_divisor = 1
emission_shape = 0
flag_align_y = false
flag_rotate_y = false
flag_disable_z = false
spread = 45.0
flatness = 0.0
gravity = Vector3( 0, -9.8, 0 )
initial_velocity = 1.0
initial_velocity_random = 0.0
angular_velocity = 0.0
angular_velocity_random = 0.0
linear_accel = 0.0
linear_accel_random = 0.0
radial_accel = 0.0
radial_accel_random = 0.0
tangential_accel = 0.0
tangential_accel_random = 0.0
damping = 0.0
damping_random = 0.0
angle = 0.0
angle_random = 0.0
scale = 1.0
scale_random = 0.0
color = Color( 1, 1, 1, 1 )
hue_variation = 0.0
hue_variation_random = 0.0
anim_speed = 0.0
anim_speed_random = 0.0
anim_offset = 0.0
anim_offset_random = 0.0
anim_loop = false

               GDSC   [      �   �     ���Ӷ���   ��������������Ӷ   ����������������ڶ��   ������������Ӷ��   �������������¶�   ��������Ҷ��   ��������¶��   �������ݶ���   ��Ŷ   �����϶�   ����Ķ��   ����¶��   ��������ж��   ζ��   �������������������Ŷ���   ��������Ŷ��   �����¶�   �������Ӷ���   �������¶���   ���������Ŷ�   ����������Ӷ   ������������Ŷ��   ���������Ŷ�   �������ض���   ������Ӷ   ������������������ڶ   ���������������ڶ���   �������������Ӷ�   ���������������������Ŷ�   �������������������Ŷ���   �����������϶���   ������������϶��   �������������̶�   �����Ҷ�   �������Ŷ���   ������϶   ���������������϶���   ����������������������۶   ���������������϶���   ����������������������۶   �������������϶�   ��������������������۶��   �����������ڶ���   ������������������۶   �����������ڶ���   ������������������۶   ���������������ڶ���   ����������������������۶   ������Ѷ   �������������۶�   ����Ӷ��   �����������۶���   ����Ӷ��   �����������۶���   ����Ķ��   ������������ض��   �������������������۶���   ���������������������Ŷ�   ߶��   ������������������Ӷ   ��������ń�   ����   ����������������ڶ��   ��������Ҷ��   �����Ҷ�   ���������������������Ŷ�   �������������ݶ�   �������Ӷ���   �������������������¶���   ������������������Ŷ   ������Ŷ   �����������Ŷ���   ������Ŷ   �Ŷ�   �۶�   ����������������¶��   ��������Ӷ��   ����������Ӷ   ����������Ķ   �������嶶��   ���Ӷ���   ��������¶��   ���Ӷ���   �߶�   ������������ڶ��   ���¶���   ���������������ƶ���   ���ƶ���   �������������¶�   ������������¶��   ��������¶��      res://particles.tscn      res://firework_material.tres      res://icon.png        I<3Godot                                        �        d                  �������?  {�G�z�?     �?            �        8                          �         
                           �        �������?  <                    0        :         
                                        %      +      1   	   7   
   :      ;      <      B      I      J      K      R      S      a      d      g      h      i      p      |      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '     (     )     *     +     ,     -     .   !  /   ,  0   H  1   I  2   J  3   K  4   L  5   M  6   N  7   O  8   \  9   i  :   v  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H     I     J     K     L     M   #  N   .  O   /  P   ;  Q   F  R   G  S   S  T   ^  U   _  V   j  W   u  X   v  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r      s   	  t     u     v     w   $  x   +  y   ,  z   -  {   4  |   :  }   @  ~   F     L  �   R  �   g  �   h  �   i  �   p  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �      �   !  �   '  �   .  �   9  �   :  �   @  �   A  �   F  �   I  �   S  �   ]  �   ^  �   h  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   5TT7=�  ?LMT7=�  ?L�  MT7=�  ?L�  MT7=�  HIT7=�  �  T7=�  �  T7=�  �  T=�  TTT3�	  LMR�  S�
  P�  LMTTT3�  L�  MR�  �  &L�  LM�  �  M�  R�  1�  �  1�  TTT3�  L�  MR�  �  P�  �  LM�	  �  �  �  P�  �!  L�  N�
  M�  &�  L�  MR�  �  P�  �  L�  LM�  M�  �  P�  �!  L�  N�  M�  �  P�  �!  L�  N�  M�  �  P�  �!  L�  N�  M�  &�  L�  MR�  �  P�  �  LM�  �  �  P�  �!  L�  N�  M�  &�  L�  MR�  �  P�  �  LM�  �  �  P�  �  L�!  L�  N�  MN�!  L�  N�  MM�  &�  L�  MR�  �  P�  �  TTT3�  L�  MR�  �  �  �  �  P�  �  LM�  �  �  P�  �!  L�  N�  M�  �  P�  �  L�!  L�  N�  MN�!  L�  N�  MN�!  L�  N�  MM�  �  �  �  �  �  �  �  �  P�  �  L�  LM�  M�  �  P�  �  L�  LM�  M�  �  P�   �  L�  LM�  M�  �  P�!  �!  L�  N�  M�  �  P�"  �!  L�  N�  M�  �  �  P�#  �  L�!  L�  N�  MN�!  L�  N�  MN�!  L�  N�  MM�  &�  L�  MR�  �  P�#  �  L�  N�  N�  M�  �  &�  L�  MR�  �  P�$  �!  L�  N�  M�  �  P�%  �!  L�  N�  M�  �  P�&  �!  L�  N�  M�  �  P�'  �!  L�  N�  M�  �  �  P�(  �!  L�  N�  M�  �  P�)  �!  L�  N�  M�  �  �  &�  L�  MR�  �  P�*  �!  L�  N�  M�  �  P�+  �!  L�  N�  M�  �  �  P�,  �!  L�  N�  M�  �  P�-  �!  L�  N�  M�  �  �  P�.  �!  L�  N�  M�  �  P�/  �!  L�  N�  M�  �  �  P�0  �!  L�  N�  M�  �  P�1  �!  L�  N�  M�  �  �  P�2  �!  L�  N�  M�  �  P�3  �!  L�  N�  M�  �  �  �  P�4  �  LM�  �  �  �  P�5  �!  L�  N�  M�  �  �  �  P�6  �H  L�  LM�  N�  LM�  N�  LM�  N�  LM�  M�  �  &�  L�  MR�  �  P�7  �!  L�  N�  M�  �  P�8  �!  L�  N�  M�  �  �  �  �  �  �  �  �  TTT3�9  L�  MR�  )�:  �@  L�  MR�  =�;  �<  P�=  LM�  �;  P�  �>  P�=  LM�  �  L�;  M�  �  L�;  P�  M�  �?  L�;  M�  �  P�@  L�;  MTTT3�A  L�  MR�  �  P�  �  �  �  P�  �  �  �  P�  �  �  �  P�  �  �  �  P�  �  �  �  P�  �  L�!  L�  N�  MN�!  L�  N�  MMTTT3�B  L�  MR�  )�:  �@  L�  MR�  =�;  �  P�C  LM�  �;  P�  �  �  �A  L�;  M�  �?  L�;  M�  �  P�@  L�;  MTTT3�D  LMR�  =�  �  �  )�  �  R�  �  �  P�  �  1�  �  TT3�E  L�F  MR�  =�G  �  L�F  M�  =�H  �  L�G  �  M�  �F  �  L�G  �  M�  �  =�I  �  �  &�F  	�  R�  �I  �  �6  L�F  M�  (R�  �I  �6  L�F  M�  �  =�J  �  �  &�H  	�  R�  �J  �  �6  L�H  M�  (R�  �J  �6  L�H  M�  �  1�J  �  �I  TTT3�K  LMR�  �  S�
  P�L  �  �  �M  P�N  L�M  P�O  M�  �  &�  �  R�  �  �9  L�  M�  (R�  &�  P�P  LM�  R�  �  P�Q  LMP�R  LM�  �  &�  P�P  LM�  R�  S�S  �T  P�U  �6  L�D  LMM�  �6  L�  M�  �E  L�  M�  (R�  S�S  �T  P�U  �  TTT3�V  LMR�  S�
  P�W  LM�  S�
  P�L  �  LS�S  �X  P�U  M�  �  �  LS�S  �Y  P�U  M�  �  S�S  �Z  P�U  �  �  �  �  )�:  �@  L�  P�P  LMMR�  �  P�Q  LMP�R  LM�  �  �  &�  �  R�  �  LM�  (R�  �"  L�  P�G  LMM�  �  S�
  P�  LM[               [gd_scene load_steps=2 format=2]

[ext_resource path="res://world.gd" type="Script" id=1]

[node name="world" type="Node" index="0"]

script = ExtResource( 1 )

[node name="background" type="Polygon2D" parent="." index="0"]

polygon = PoolVector2Array( 1920, 0, 1920, 1080, 0, 1080, 0, 0 )
uv = PoolVector2Array(  )
color = Color( 0, 0, 0, 1 )
vertex_colors = PoolColorArray(  )
offset = Vector2( 0, 0 )
antialiased = false
texture = null
texture_offset = Vector2( 0, 0 )
texture_scale = Vector2( 1, 1 )
texture_rotation = 0.0
invert_enable = false
invert_border = 100.0
__meta__ = {
"_edit_lock_": true
}

[node name="timer" type="Timer" parent="." index="1"]

process_mode = 1
wait_time = 0.1
one_shot = false
autostart = false

[node name="ui" type="CanvasLayer" parent="." index="2"]

layer = 1
offset = Vector2( 0, 0 )
rotation = 0.0
scale = Vector2( 1, 1 )

[node name="numbers_panel" type="Panel" parent="ui" index="0"]

modulate = Color( 0, 0, 0, 0.588235 )
anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1800.0
margin_right = 1920.0
margin_bottom = 97.0
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_styles" ]

[node name="numbers_label" type="Label" parent="ui" index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1800.0
margin_right = 1860.0
margin_bottom = 31.0
rect_scale = Vector2( 2, 2 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "0
0
0"
align = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="seed_edit" type="LineEdit" parent="ui" index="2"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1572.0
margin_top = 1039.0
margin_right = 1772.0
margin_bottom = 1063.0
rect_min_size = Vector2( 200, 10 )
rect_scale = Vector2( 1.5, 1.5 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 4
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "I<3Godot"
align = 1
expand_to_text_length = true
focus_mode = 2
placeholder_text = "seed"
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
context_menu_enabled = true
_sections_unfolded = [ "Anchor", "Caret", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Placeholder", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="wait_time_edit" type="LineEdit" parent="ui" index="3"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1481.0
margin_top = 1039.0
margin_right = 1539.0
margin_bottom = 1063.0
rect_min_size = Vector2( 50, 10 )
rect_scale = Vector2( 1.5, 1.5 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 4
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "0.1"
align = 1
expand_to_text_length = true
focus_mode = 2
placeholder_text = "time"
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
context_menu_enabled = true
_sections_unfolded = [ "Anchor", "Caret", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Placeholder", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="fps_lock_edit" type="LineEdit" parent="ui" index="4"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1390.0
margin_top = 1039.0
margin_right = 1448.0
margin_bottom = 1063.0
rect_min_size = Vector2( 50, 10 )
rect_scale = Vector2( 1.5, 1.5 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 4
custom_colors/font_color = Color( 1, 1, 1, 1 )
text = "30"
align = 1
expand_to_text_length = true
focus_mode = 2
placeholder_text = "fps"
placeholder_alpha = 0.6
caret_blink = false
caret_blink_speed = 0.65
context_menu_enabled = true
_sections_unfolded = [ "Anchor", "Caret", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Placeholder", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[node name="go" type="Button" parent="ui" index="5"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 1877.0
margin_top = 1037.0
margin_right = 1917.0
margin_bottom = 1077.0
rect_min_size = Vector2( 40, 40 )
rect_pivot_offset = Vector2( 0, 0 )
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
toggle_mode = false
enabled_focus_mode = 2
shortcut = null
group = null
text = "go"
flat = false
align = 1
_sections_unfolded = [ "Anchor", "Focus", "Grow Direction", "Hint", "Margin", "Material", "Mouse", "Pause", "Rect", "Size Flags", "Theme", "Visibility", "custom_colors", "custom_constants", "custom_fonts", "custom_styles" ]

[connection signal="timeout" from="timer" to="." method="_on_timer_timeout"]

[connection signal="button_up" from="ui/go" to="." method="_on_go_button_up"]


    [remap]

path="res://world.gdc"
�PNG

   IHDR         ��a   	pHYs     ��  8$iTXtXML:com.adobe.xmp     <?xpacket begin="﻿" id="W5M0MpCehiHzreSzNTczkc9d"?>
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
         <xmp:CreateDate>2018-01-12T18:25:34+01:00</xmp:CreateDate>
         <xmp:ModifyDate>2018-01-16T21:00:39+01:00</xmp:ModifyDate>
         <xmp:MetadataDate>2018-01-16T21:00:39+01:00</xmp:MetadataDate>
         <dc:format>image/png</dc:format>
         <photoshop:ColorMode>3</photoshop:ColorMode>
         <xmpMM:InstanceID>xmp.iid:6f670a6b-4cae-a742-ae96-ba51266257a9</xmpMM:InstanceID>
         <xmpMM:DocumentID>xmp.did:6f670a6b-4cae-a742-ae96-ba51266257a9</xmpMM:DocumentID>
         <xmpMM:OriginalDocumentID>xmp.did:6f670a6b-4cae-a742-ae96-ba51266257a9</xmpMM:OriginalDocumentID>
         <xmpMM:History>
            <rdf:Seq>
               <rdf:li rdf:parseType="Resource">
                  <stEvt:action>created</stEvt:action>
                  <stEvt:instanceID>xmp.iid:6f670a6b-4cae-a742-ae96-ba51266257a9</stEvt:instanceID>
                  <stEvt:when>2018-01-12T18:25:34+01:00</stEvt:when>
                  <stEvt:softwareAgent>Adobe Photoshop CC 2017 (Windows)</stEvt:softwareAgent>
               </rdf:li>
            </rdf:Seq>
         </xmpMM:History>
         <tiff:Orientation>1</tiff:Orientation>
         <tiff:XResolution>720000/10000</tiff:XResolution>
         <tiff:YResolution>720000/10000</tiff:YResolution>
         <tiff:ResolutionUnit>2</tiff:ResolutionUnit>
         <exif:ColorSpace>65535</exif:ColorSpace>
         <exif:PixelXDimension>16</exif:PixelXDimension>
         <exif:PixelYDimension>16</exif:PixelYDimension>
      </rdf:Description>
   </rdf:RDF>
</x:xmpmeta>
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                            
<?xpacket end="w"?>�1��    cHRM  z%  ��  ��  ��  u0  �`  :�  o�_�F  )IDATx�L�Mou ��g�v;ݗ�����Vb��b��5V*44��	/$F�z�kp��xЄ�!�Ą4-h���FL�m�v�mٙٙ�ٙ�<���sz~����J�×5U?�$�$�(�1t�(��� ��������`e�i���h����z.�r�u �Y��3��L���B�USs*�U]��t"%q���#2i��g�9V����� p��y�_��;wq�锁��P45��H_&	�n@�Qgj�b��\Y��Ν�:w�+�1S'�crԢը���$�D�J���'�s�ޢ��$�rϵ��q�|>�㸼16�t�F5����;��Wț���=sx���yuv�[�Zp���MD�������G�����<�����UTC���������6[M���$���!3�I��7�	�6^b�z!�eym���Wgaկ�U:�" Y�a�~��_���~���,�mPȢ
)1�R�R!Ht���^]Ķ.��ql��^]Čm�D'�
f_
!%:@,$����ҪPY���un��	�fhrt�;`��C�XL�����4#�2_�{��"��, )Cgu���a����02y�T������>vs���
��<��ce������b�s�T�y �����#�~<�c�wv\��6{n��N�b�d�������d�y�������lA�m�Q2U�f�
C�T�H ���!ڻ�X���@2T.�m��X�0+�%�n�ח(f*�<�L? ����w��"J�*�i� ��)�o�>W�����8'ı ���0����΢��ؾ�� �>tEW�%    IEND�B`�             ECFG      application/config/name         Particles2DMark    application/run/main_scene         res://world.tscn   application/config/icon         res://icon.pngn    display/window/size/width     �         display/window/size/height     8         display/window/size/test_width               display/window/size/test_height     �         display/window/dpi/allow_hidpi            display/window/vsync/use_vsync             display/window/stretch/mode         2da    display/window/stretch/aspect         keep)   rendering/environment/default_environment          res://default_env.tres     GDPC
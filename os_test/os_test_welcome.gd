extends GraphNode

func update_state():
	var welcome_text = """
Welcome to the OS Test Demo!
	
You will find the following OS methods here:


### SYSTEM ###

String get_name ( ) const
Returns the name of the host OS. Possible values are: “Android”, “Haiku”, “iOS”, “HTML5”, “OSX”, “Server”, “Windows”, “UWP”, “X11”.

String get_model_name ( ) const
Returns the model name of the current device.

String get_unique_id ( ) const
Returns a string that is unique to the device. Currently only works on Android and iOS. Returns empty string on other platforms.

bool has_environment ( String environment ) const
Returns true if an environment variable exists.

String get_environment ( String environment ) const
Returns an environment variable.

bool has_feature ( String tag_name ) const
?

bool can_draw ( ) const
Returns true if the host OS allows drawing.

PoolStringArray get_cmdline_args ( )
Returns the command line arguments passed to the engine.

int get_exit_code ( ) const
?

void set_exit_code ( int code )
Sets the exit code that will be returned by the game.


### ENGINE ###

String get_executable_path ( ) const
Returns the path to the current engine executable.

bool is_debug_build ( ) const
Returns true if the build is a debug build.
Returns true when running in the editor.
Returns false if the build is a release build.

bool is_stdout_verbose ( ) const
Returns true if the engine was executed with -v (verbose stdout).


### POWER ###

int get_power_percent_left ( )
Returns the amount of battery left in the device as a percentage.

int get_power_seconds_left ( )
Returns the time in seconds before the device runs out of battery.

int get_power_state ( )
Returns the current state of the device regarding battery and power.


### SCREEN ###

bool has_touchscreen_ui_hint ( ) const
Returns true if the device has a touchscreen or emulates one.

int get_current_screen ( ) const
Returns the current screen index (0 padded).

void set_current_screen ( int screen )
Sets the current screen by index.

int get_screen_count ( ) const
Returns the number of displays attached to the host machine.

int get_screen_dpi ( int screen=-1 ) const
Returns the dots per inch density of the specified screen.
On Android Devices, the actual screen densities are grouped into six generalized densities:
ldpi - 120 dpi
mdpi - 160 dpi
hdpi - 240 dpi
xhdpi - 320 dpi
xxhdpi - 480 dpi
xxxhdpi - 640 dpi

int get_screen_orientation ( ) const
Returns the current screen orientation, the return value will be one of the SCREEN_ORIENTATION constants in this class.

void set_screen_orientation ( int orientation )
Sets the current screen orientation, the argument value must be one of the SCREEN_ORIENTATION constants in this class.

Vector2 get_screen_position ( int screen=-1 ) const
Returns the position of the specified screen by index. If no screen index is provided, the current screen will be used.

Vector2 get_screen_size ( int screen=-1 ) const
Returns the dimensions in pixels of the specified screen.

bool is_keep_screen_on ( ) const
Returns true if the screen is being kept on.

void set_keep_screen_on ( bool enabled )
Sets keep screen on if true, or goes to sleep by device setting if false. (for Android/iOS)

bool is_vsync_enabled ( ) const
Returns true if synchronizing the framerate to the monitor’s refresh rate is enabled.

void set_use_vsync ( bool enable )
If true the framerate will synchronize to the monitor’s refresh rate.


### WINDOW ###

bool get_borderless_window ( ) const
Returns true if the current window is borderless.

void set_borderless_window ( bool borderless )
Removes the window frame.

Vector2 get_window_position ( ) const
Returns the window position relative to the screen, the origin is the top left corner, +Y axis goes to the bottom and +X axis goes to the right.

void set_window_position ( Vector2 position )
Sets the position of the window to the specified position (this function could be restricted by the window manager, meaning that there could be some unreachable areas of the screen).

Vector2 get_window_size ( ) const
Returns the size of the window (without counting window manager decorations).

void set_window_size ( Vector2 size )
Sets the window size to the specified size.

bool is_window_fullscreen ( ) const
Returns true if the window is in fullscreen mode.

void set_window_fullscreen ( bool enabled )
Sets window fullscreen mode to the enabled argument, enabled is a toggle for the fullscreen mode, calling the function with enabled true when the screen is not on fullscreen mode will cause the screen to go to fullscreen mode, calling the function with enabled false when the screen is in fullscreen mode will cause the window to exit the fullscreen mode.

bool is_window_maximized ( ) const
Returns true if the window is maximized.

void set_window_maximized ( bool enabled )
Set true to maximize the window.

bool is_window_minimized ( ) const
Returns true if the window is minimized.

void set_window_minimized ( bool enabled )
Set true to minimize the window.

bool is_window_resizable ( ) const
Returns true if the window is resizable.

void set_window_resizable ( bool enabled )
Sets the window resizable state, if the window is not resizable it will preserve the dimensions specified in the project settings.

void set_window_title ( String title )
Sets the window title to the specified string.


### DATE AND TIME ###

int get_system_time_secs ( ) const
Returns the epoch time of the operating system in seconds.

int get_ticks_msec ( ) const
Returns the amount of time passed in milliseconds since the engine started.

Dictionary get_time ( bool utc=false ) const
Returns current time as a dictionary of keys: hour, minute, second.

Dictionary get_time_zone_info ( ) const
Returns the current time zone as a dictionary with the keys: bias and name.

int get_unix_time ( ) const
Return the current unix timestamp.

int get_unix_time_from_datetime ( Dictionary datetime ) const
Get an epoch time value from a dictionary of time values.
datetime must be populated with the following keys: year, month, day, hour, minute, second.
You can pass the output from get_datetime_from_unix_time directly into this function. Daylight savings time (dst), if present, is ignored.

Dictionary get_date ( bool utc=false ) const
Returns current date as a dictionary of keys: year, month, day, weekday, dst (daylight savings time).

Dictionary get_datetime ( bool utc=false ) const
Returns current datetime as a dictionary of keys: year, month, day, weekday, dst (daylight savings time), hour, minute, second.

Dictionary get_datetime_from_unix_time ( int unix_time_val ) const
Get a dictionary of time values when given epoch time.
Dictionary Time values will be a union of values from get_time and get_date dictionaries (with the exception of dst = day light standard time, as it cannot be determined from epoch).


### LOCALISATION ###

String get_locale ( ) const
Returns the host OS locale.

String get_latin_keyboard_variant ( ) const
Returns the current latin keyboard variant as a String.
Possible return values are: “QWERTY”, “AZERTY”, “QZERTY”, “DVORAK”, “NEO”, “COLEMAK” or “ERROR”.

int find_scancode_from_string ( String string ) const
Returns the scancode of the given string (e.g. “Escape”)

String get_scancode_string ( int code ) const
Returns the given scancode as a string (e.g. Return values: “Escape”, “Shift+Escape”).

bool is_scancode_unicode ( int code ) const
Returns true if the input code has a unicode character.


### VIRTUAL KEYBOARD ###

bool has_virtual_keyboard ( ) const
Returns true if the platform has a virtual keyboard, false otherwise.

void show_virtual_keyboard ( String existing_text=”” )
Shows the virtual keyboard if the platform has one. The existing_text parameter is useful for implementing your own LineEdit, as it tells the virtual keyboard what text has already been typed (the virtual keyboard uses it for auto-correct and predictions).

void hide_virtual_keyboard ( )
Hides the virtual keyboard if it is shown, does nothing otherwise.

int get_virtual_keyboard_height ( )
?

String get_clipboard ( ) const
Get clipboard from the host OS.

void set_clipboard ( String clipboard )
Sets clipboard to the OS.


### FILESYSTEM ###

String get_user_data_dir ( ) const
Returns the absolute directory path where user data is written (user://).

String get_system_dir ( int dir ) const
Returns the actual path to commonly used folders across different platforms. Available locations are specified in OS.SystemDir.

bool is_userfs_persistent ( ) const
If true, the user:// file system is persistent, so that its state is the same after a player quits and starts the game again. Relevant to the HTML5 platform, where this persistence may be unavailable.

void set_use_file_access_save_and_swap ( bool enabled )
Enables backup saves if enabled is true.


### NATIVE VIDEO ###

bool native_video_is_playing ( )
Returns true if native video is playing.

void native_video_pause ( )
Pauses native video playback.

int native_video_play ( String path, float volume, String audio_track, String subtitle_track )
Plays native video from the specified path, at the given volume and with audio and subtitle tracks.

void native_video_stop ( )
Stops native video playback.

void native_video_unpause ( )
Resumes native video playback.


### RESOURCES ###

void print_all_resources ( String tofile=”” )
Shows all resources in the game. Optionally the list can be written to a file.

void print_all_textures_by_size ( )
Shows the list of loaded textures sorted by size in memory.

void print_resources_by_type ( PoolStringArray types )
Shows the number of resources loaded by the game of the given types.

void print_resources_in_use ( bool short=false )
Shows all resources currently used by the game.

void dump_resources_to_file ( String file )
Dumps all used resources to file (only works in debug).
Entry format per line: “Resource Type : Resource Location”
At the end of the file is a statistic of all used Resource Types.


### MEMORY ###

int get_dynamic_memory_usage ( ) const
Returns the total amount of dynamic memory used (only works in debug).

int get_static_memory_peak_usage ( ) const
Returns the max amount of static memory used (only works in debug).

int get_static_memory_usage ( ) const
Returns the amount of static memory being used by the program in bytes.

void dump_memory_to_file ( String file )
Dumps the memory allocation ringlist to a file (only works in debug).
Entry format per line: “Address - Size - Description”


### ACTIONS ###

void alert ( String text, String title=”Alert!” )
Displays a modal dialog box utilizing the host OS.

void request_attention ( )
Request the user attention to the window. It’ll flash the taskbar button on Windows or bounce the dock icon on OSX.

int execute ( String path, PoolStringArray arguments, bool blocking, Array output=[ ] )
Execute the binary file in given path, optionally blocking until it returns. A process ID is returned.

int shell_open ( String uri )
Requests the OS to open a resource with the most appropriate program. For example.
OS.shell_open("C:/Users/name/Downloads") on Windows opens the file explorer at the downloads folders of the user.
OS.shell_open("http://godotengine.org") opens the default web browser on the official Godot website.

int kill ( int pid )
Kill a process ID (this method can be used to kill processes that were not spawned by the game).


### THREADS AND PROCESSES ###

bool can_use_threads ( ) const
Returns true if the current host platform is using multiple threads.

int get_process_id ( ) const
Returns the game process ID

int get_processor_count ( ) const
Returns the number of cores available in the host machine.

int set_thread_name ( String name )
Sets the name of the current thread.

bool is_in_low_processor_usage_mode ( ) const
Returns true if low cpu usage mode is enabled.

void set_low_processor_usage_mode ( bool enable )
Set to true to enable the low cpu usage mode. In this mode, the screen only redraws when there are changes, and a considerable sleep time is inserted between frames. Use this in tool mode to reduce CPU usage.

void delay_msec ( int msec ) const
Delay executing of the current thread by given milliseconds.

void delay_usec ( int usec ) const
Delay executing of the current thread by given microseconds.


### UNSORTED ###

int get_splash_tick_msec ( ) const
?

bool is_ok_left_and_cancel_right ( ) const
Returns true if the “Okay” button should appear on the left and “Cancel” on the right.

void set_icon ( Image icon )
Sets the game’s icon.

void set_ime_position ( Vector2 position )
?
"""
	
	$hbox/label.text = welcome_text
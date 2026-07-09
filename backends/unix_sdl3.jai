//
// This file was auto-generated using the following command:
//
// jai generate.jai - -backend_sdl3_only_platform
//



// Follow "Getting Started" link and check examples/ folder to learn about using backends!
ImplSDL3_InitForOpenGL :: (window: *SDL_Window, sdl_gl_context: *void) -> bool #foreign imgui_sdl3 "_Z28ImGui_ImplSDL3_InitForOpenGLP10SDL_WindowPv";
ImplSDL3_InitForVulkan :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "_Z28ImGui_ImplSDL3_InitForVulkanP10SDL_Window";
ImplSDL3_InitForD3D :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "_Z25ImGui_ImplSDL3_InitForD3DP10SDL_Window";
ImplSDL3_InitForMetal :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "_Z27ImGui_ImplSDL3_InitForMetalP10SDL_Window";
ImplSDL3_InitForSDLRenderer :: (window: *SDL_Window, renderer: *SDL_Renderer) -> bool #foreign imgui_sdl3 "_Z33ImGui_ImplSDL3_InitForSDLRendererP10SDL_WindowP12SDL_Renderer";
ImplSDL3_InitForSDLGPU :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "_Z28ImGui_ImplSDL3_InitForSDLGPUP10SDL_Window";
ImplSDL3_InitForOther :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "_Z27ImGui_ImplSDL3_InitForOtherP10SDL_Window";
ImplSDL3_Shutdown :: () -> void #foreign imgui_sdl3 "_Z23ImGui_ImplSDL3_Shutdownv";
ImplSDL3_NewFrame :: () -> void #foreign imgui_sdl3 "_Z23ImGui_ImplSDL3_NewFramev";
ImplSDL3_ProcessEvent :: (event: *SDL_Event) -> bool #foreign imgui_sdl3 "_Z27ImGui_ImplSDL3_ProcessEventPK9SDL_Event";

// Gamepad selection automatically starts in AutoFirst mode, picking first available SDL_Gamepad. You may override this.
// When using manual mode, caller is responsible for opening/closing gamepad.
ImplSDL3_GamepadMode :: enum u32 {
    AutoFirst :: 0;
    AutoAll   :: 1;
    Manual    :: 2;
    ImGui_ImplSDL3_GamepadMode_AutoFirst :: AutoFirst;
    ImGui_ImplSDL3_GamepadMode_AutoAll   :: AutoAll;
    ImGui_ImplSDL3_GamepadMode_Manual    :: Manual;
}
ImplSDL3_SetGamepadMode :: (mode: ImplSDL3_GamepadMode, manual_gamepads_array: **SDL_Gamepad = null, manual_gamepads_count: s32 = -1) -> void #foreign imgui_sdl3 "_Z29ImGui_ImplSDL3_SetGamepadMode26ImGui_ImplSDL3_GamepadModePP11SDL_Gamepadi";

// (Advanced, for X11 users) Override Mouse Capture mode. Mouse capture allows receiving updated mouse position after clicking inside our window and dragging outside it.
// Having this 'Enabled' is in theory always better. But, on X11 if you crash/break to debugger while capture is active you may temporarily lose access to your mouse.
// The best solution is to setup your debugger to automatically release capture, e.g. 'setxkbmap -option grab:break_actions && xdotool key XF86Ungrab' or via a GDB script. See #3650.
// But you may independently decide on X11, when a debugger is attached, to set this value to ImGui_ImplSDL3_MouseCaptureMode_Disabled.
ImplSDL3_MouseCaptureMode :: enum u32 {
    Enabled          :: 0;
    EnabledAfterDrag :: 1;
    Disabled         :: 2;
    ImGui_ImplSDL3_MouseCaptureMode_Enabled          :: Enabled;
    ImGui_ImplSDL3_MouseCaptureMode_EnabledAfterDrag :: EnabledAfterDrag;
    ImGui_ImplSDL3_MouseCaptureMode_Disabled         :: Disabled;
}
ImplSDL3_SetMouseCaptureMode :: (mode: ImplSDL3_MouseCaptureMode) -> void #foreign imgui_sdl3 "_Z34ImGui_ImplSDL3_SetMouseCaptureMode31ImGui_ImplSDL3_MouseCaptureMode";

#scope_file

#if OS == .MACOS imgui_sdl3 :: #library,no_dll "macos/ImGui_sdl3";
#if OS == .LINUX imgui_sdl3 :: #library,no_dll "linux/ImGui_sdl3";

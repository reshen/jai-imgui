//
// This file was auto-generated using the following command:
//
// jai generate.jai - -backend_sdl3_only_platform
//



// Follow "Getting Started" link and check examples/ folder to learn about using backends!
ImplSDL3_InitForOpenGL :: (window: *SDL_Window, sdl_gl_context: *void) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForOpenGL@@YA_NPEAUSDL_Window@@PEAX@Z";
ImplSDL3_InitForVulkan :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForVulkan@@YA_NPEAUSDL_Window@@@Z";
ImplSDL3_InitForD3D :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForD3D@@YA_NPEAUSDL_Window@@@Z";
ImplSDL3_InitForMetal :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForMetal@@YA_NPEAUSDL_Window@@@Z";
ImplSDL3_InitForSDLRenderer :: (window: *SDL_Window, renderer: *SDL_Renderer) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForSDLRenderer@@YA_NPEAUSDL_Window@@PEAUSDL_Renderer@@@Z";
ImplSDL3_InitForSDLGPU :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForSDLGPU@@YA_NPEAUSDL_Window@@@Z";
ImplSDL3_InitForOther :: (window: *SDL_Window) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_InitForOther@@YA_NPEAUSDL_Window@@@Z";
ImplSDL3_Shutdown :: () -> void #foreign imgui_sdl3 "?ImGui_ImplSDL3_Shutdown@@YAXXZ";
ImplSDL3_NewFrame :: () -> void #foreign imgui_sdl3 "?ImGui_ImplSDL3_NewFrame@@YAXXZ";
ImplSDL3_ProcessEvent :: (event: *SDL_Event) -> bool #foreign imgui_sdl3 "?ImGui_ImplSDL3_ProcessEvent@@YA_NPEBTSDL_Event@@@Z";

// Gamepad selection automatically starts in AutoFirst mode, picking first available SDL_Gamepad. You may override this.
// When using manual mode, caller is responsible for opening/closing gamepad.
ImplSDL3_GamepadMode :: enum s32 {
    AutoFirst :: 0;
    AutoAll   :: 1;
    Manual    :: 2;
    ImGui_ImplSDL3_GamepadMode_AutoFirst :: AutoFirst;
    ImGui_ImplSDL3_GamepadMode_AutoAll   :: AutoAll;
    ImGui_ImplSDL3_GamepadMode_Manual    :: Manual;
}
ImplSDL3_SetGamepadMode :: (mode: ImplSDL3_GamepadMode, manual_gamepads_array: **SDL_Gamepad = null, manual_gamepads_count: s32 = -1) -> void #foreign imgui_sdl3 "?ImGui_ImplSDL3_SetGamepadMode@@YAXW4ImGui_ImplSDL3_GamepadMode@@PEAPEAUSDL_Gamepad@@H@Z";

// (Advanced, for X11 users) Override Mouse Capture mode. Mouse capture allows receiving updated mouse position after clicking inside our window and dragging outside it.
// Having this 'Enabled' is in theory always better. But, on X11 if you crash/break to debugger while capture is active you may temporarily lose access to your mouse.
// The best solution is to setup your debugger to automatically release capture, e.g. 'setxkbmap -option grab:break_actions && xdotool key XF86Ungrab' or via a GDB script. See #3650.
// But you may independently decide on X11, when a debugger is attached, to set this value to ImGui_ImplSDL3_MouseCaptureMode_Disabled.
ImplSDL3_MouseCaptureMode :: enum s32 {
    Enabled          :: 0;
    EnabledAfterDrag :: 1;
    Disabled         :: 2;
    ImGui_ImplSDL3_MouseCaptureMode_Enabled          :: Enabled;
    ImGui_ImplSDL3_MouseCaptureMode_EnabledAfterDrag :: EnabledAfterDrag;
    ImGui_ImplSDL3_MouseCaptureMode_Disabled         :: Disabled;
}
ImplSDL3_SetMouseCaptureMode :: (mode: ImplSDL3_MouseCaptureMode) -> void #foreign imgui_sdl3 "?ImGui_ImplSDL3_SetMouseCaptureMode@@YAXW4ImGui_ImplSDL3_MouseCaptureMode@@@Z";

#scope_file

imgui_sdl3 :: #library,no_dll "ImGui_sdl3.static";

project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    location "%{wks.location}/ImGui"
    targetdir "%{wks.location}/ImGui/bin/%{cfg.buildcfg}/"

    objdir "%{wks.location}/ImGui/obj/%{cfg.buildcfg}/"

    files
    {
      "*.h", "*.cpp"
    }

    defines { "IMGUI_DISABLE_OBSOLETE_KEYIO" }
    defines { "IMGUI_API=__declspec(dllexport)" }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"
        runtime "Debug"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        runtime "Release"

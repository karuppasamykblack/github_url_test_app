#include "include/guthuburl/guthuburl_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "guthuburl_plugin.h"

void GuthuburlPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  guthuburl::GuthuburlPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

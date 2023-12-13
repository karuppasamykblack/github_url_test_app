#ifndef FLUTTER_PLUGIN_GUTHUBURL_PLUGIN_H_
#define FLUTTER_PLUGIN_GUTHUBURL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace guthuburl {

class GuthuburlPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GuthuburlPlugin();

  virtual ~GuthuburlPlugin();

  // Disallow copy and assign.
  GuthuburlPlugin(const GuthuburlPlugin&) = delete;
  GuthuburlPlugin& operator=(const GuthuburlPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace guthuburl

#endif  // FLUTTER_PLUGIN_GUTHUBURL_PLUGIN_H_

import Cocoa
import FlutterMacOS

public class AppPathPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "app_path", binaryMessenger: registrar.messenger)
    let instance = AppPathPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    var message: String?
    if let args = call.arguments as? Dictionary<String, Any?> {
        message = args["message"] as? String
    }
    switch call.method {
    case "getAppPath":
      let url = NSWorkspace.shared.urlForApplication(withBundleIdentifier: message ?? "")
      result(url?.path ?? "")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

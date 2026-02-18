import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterStreamHandler {

  private let eventChannelName = "secure_screen_events"
  private var eventSink: FlutterEventSink?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller = window?.rootViewController as! FlutterViewController

    let eventChannel = FlutterEventChannel(
        name: eventChannelName,
        binaryMessenger: controller.binaryMessenger)

    eventChannel.setStreamHandler(self)

    // 📸 Screenshot detection
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(userDidTakeScreenshot),
        name: UIApplication.userDidTakeScreenshotNotification,
        object: nil)

    GeneratedPluginRegistrant.register(with: self)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  @objc func userDidTakeScreenshot() {
      eventSink?("screenshot")
  }

  // MARK: - FlutterStreamHandler

  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
      eventSink = events
      return nil
  }

  func onCancel(withArguments arguments: Any?) -> FlutterError? {
      eventSink = nil
      return nil
  }
}

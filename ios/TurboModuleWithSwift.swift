import Foundation

@objc(TurboModuleWithSwift)
class TurboModuleWithSwift: NSObject {

  @objc static func requiresMainQueueSetup() -> Bool {
      // Return true if your module needs to be initialized on the main thread.
      return false
  }

  @objc(multiply:b:resolve:reject:)
  func multiply(_ a: Double, b: Double, resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) {
      let result = a * b
      resolve(result)
  }
}
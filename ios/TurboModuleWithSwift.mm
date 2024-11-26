#ifdef RCT_NEW_ARCH_ENABLED
#import "RNTurboModuleWithSwiftSpec.h"
@interface RCT_EXTERN_MODULE(TurboModuleWithSwift, NSObject<NativeTurboModuleWithSwiftSpec>)
#else
@interface RCT_EXTERN_MODULE(TurboModuleWithSwift, NSObject<RCTBridgeModule>)
#endif

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXTERN_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeTurboModuleWithSwiftSpecJSI>(params);
}
#endif

@end

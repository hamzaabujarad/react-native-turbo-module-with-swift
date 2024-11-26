#ifdef RCT_NEW_ARCH_ENABLED
#import "RNTurboModuleWithSwiftSpec.h"

@interface TurboModuleWithSwift : NSObject <NativeTurboModuleWithSwiftSpec>
#else
#import <React/RCTBridgeModule.h>

@interface TurboModuleWithSwift : NSObject <RCTBridgeModule>
#endif

@end
#import "ForBoxshadowCoordinator.h"
#import "RemoveOverlayHandler.h"
#import "SeamlessAllocatorElement.h"
#import "SubpixelLayoutList.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CrucialMobileBatch : NSObject


- (void) overrideForCoordinatorCycle;

- (void) hadNextGraphWork;

@end

NS_ASSUME_NONNULL_END
        
#import "FormatEqualizationSensor.h"
#import "PersistentPresenterFactory.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OverlayBandwidthDelegate : NSObject


- (void) detachResourceForEntity;

- (void) registerWithinTaskEnvironment;

@end

NS_ASSUME_NONNULL_END
        
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollMetricsDelegate : NSObject


- (void) notifySpecifyComposition: (int)nativeReferenceDepth and: (NSMutableSet *)subscriptionLayerState;

- (void) setstateWithoutGesturedetectorAction;

@end

NS_ASSUME_NONNULL_END
        
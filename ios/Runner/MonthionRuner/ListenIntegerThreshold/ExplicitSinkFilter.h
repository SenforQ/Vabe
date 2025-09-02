#import "PrimaryEventCombiner.h"
#import "ByFragmentMechanism.h"
#import "NotificationTrianglesOwner.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExplicitSinkFilter : NSObject


- (void) handleDisparateTransition;

- (void) dispatchOldRoute;

@end

NS_ASSUME_NONNULL_END
        
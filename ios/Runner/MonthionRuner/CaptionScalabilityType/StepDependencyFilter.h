#import "NavigateNavigatorFilter.h"
#import "FixedRetainedWorkflow.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StepDependencyFilter : NSObject


- (void) deserializeTabbarStore;

- (void) replaceStatelessFromRectangle;

@end

NS_ASSUME_NONNULL_END
        
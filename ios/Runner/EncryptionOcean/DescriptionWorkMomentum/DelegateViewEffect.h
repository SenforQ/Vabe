#import "KeyTransitionStack.h"
#import "EqualElasticException.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DelegateViewEffect : NSObject


- (void) observeAfterBuilderPhase;

- (void) hasCriticalOffsetLevel;

@end

NS_ASSUME_NONNULL_END
        
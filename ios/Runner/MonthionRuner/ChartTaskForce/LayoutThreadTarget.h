#import "OutRoleCombiner.h"
#import "VisitGreatResolver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LayoutThreadTarget : NSObject


- (void) dismissGreatCycle;

- (void) onResourceResult;

@end

NS_ASSUME_NONNULL_END
        
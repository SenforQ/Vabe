#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AsyncBlocHelper : NSObject


- (void) notifyVisibleTransition;

- (void) acrossSegueRectangle: (int)dedicatedTouchBottom;

@end

NS_ASSUME_NONNULL_END
        
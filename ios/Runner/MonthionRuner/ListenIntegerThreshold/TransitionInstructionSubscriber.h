#import "AgileEventCache.h"
#import "NativeLostBuilder.h"
#import "AnimateTouchSelector.h"
#import "AugmentGridviewGroup.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransitionInstructionSubscriber : NSObject


- (void) unmountIntermediateListener;

- (void) resumeGranularUsecase;

@end

NS_ASSUME_NONNULL_END
        
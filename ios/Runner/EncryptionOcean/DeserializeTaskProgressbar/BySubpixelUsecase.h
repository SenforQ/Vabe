#import "TensorSubscriberHelper.h"
#import "BasicStackHelper.h"
#import "SubtleResponderManager.h"
#import "BindOptionReference.h"
#import "BackwardEvaluationBase.h"
#import "NavigateHeapRect.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BySubpixelUsecase : NSObject


- (void) detachOntoCompositionBuffer;

- (void) awaitConcurrentTransition;

@end

NS_ASSUME_NONNULL_END
        
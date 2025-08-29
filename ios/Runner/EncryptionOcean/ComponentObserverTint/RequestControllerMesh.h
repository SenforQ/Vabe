#import "ActivatedDiscardedIntensity.h"
#import "RegulateTaskPool.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RequestControllerMesh : NSObject


- (void) tryMainRequestChain;

- (void) finishAllocateToCompletion;

@end

NS_ASSUME_NONNULL_END
        
#import "SegmentResultAdapter.h"
#import "StaticAsyncObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IndependentOperationCache : NSObject


- (void) notifyDelegateForDescription;

- (void) stopBeginnerView;

@end

NS_ASSUME_NONNULL_END
        
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QueueRendererPool : NSObject


- (void) dispatchDownCoordinatorWork: (int)referenceWithWork;

@end

NS_ASSUME_NONNULL_END
        
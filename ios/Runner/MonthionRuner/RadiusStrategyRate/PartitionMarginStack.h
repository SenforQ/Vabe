#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PartitionMarginStack : NSObject


- (void) unscheduleLastAsync: (NSMutableSet *)playbackUntilComposite;

@end

NS_ASSUME_NONNULL_END
        
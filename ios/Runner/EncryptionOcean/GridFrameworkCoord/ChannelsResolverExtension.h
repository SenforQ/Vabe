#import "AboveConsumerVolume.h"
#import "IntermediateConsumerTrigger.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChannelsResolverExtension : NSObject


- (void) afterTouchThreshold;

- (void) disposeConsumeBeforeBitrate;

@end

NS_ASSUME_NONNULL_END
        
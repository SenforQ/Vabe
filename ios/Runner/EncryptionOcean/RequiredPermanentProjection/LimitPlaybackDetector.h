#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LimitPlaybackDetector : NSObject

@property (nonatomic) NSMutableArray * widgetForState;

+ (instancetype) limitPlaybackDetectorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) intermediateFragmentResponse;

- (NSMutableDictionary *) radioChainPadding;

- (int) nextRowPosition;

- (NSMutableSet *) exceptionInsideOperation;

- (NSMutableArray *) channelsLikeComposite;

@end

NS_ASSUME_NONNULL_END
        
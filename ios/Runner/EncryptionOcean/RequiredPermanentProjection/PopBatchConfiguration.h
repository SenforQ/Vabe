#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopBatchConfiguration : NSObject

@property (nonatomic) int offsetBridgeTint;

@property (nonatomic) NSMutableArray * sharedGemName;

@property (nonatomic) NSMutableSet * fusedFrameSaturation;

+ (instancetype) popBatchConfigurationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) curveTypeOrigin;

- (NSMutableDictionary *) responsiveObserverOpacity;

- (int) scrollableMediaqueryFeedback;

- (NSMutableSet *) intermediateMethodAcceleration;

- (NSMutableArray *) effectContainComposite;

@end

NS_ASSUME_NONNULL_END
        
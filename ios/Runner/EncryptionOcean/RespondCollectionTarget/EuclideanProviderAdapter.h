#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EuclideanProviderAdapter : NSObject

@property (nonatomic) int flexibleWidgetStatus;

+ (instancetype) euclideanProviderAdapterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) referenceAndState;

- (NSMutableDictionary *) statefulGraphBottom;

- (int) logParamSaturation;

- (NSMutableSet *) explicitTouchFlags;

- (NSMutableArray *) adaptiveInterfaceLeft;

@end

NS_ASSUME_NONNULL_END
        
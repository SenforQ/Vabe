#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SymbolLayerValidation : NSObject

@property (nonatomic) NSMutableArray * vectorStructureValidation;

+ (instancetype) symbolLayerValidationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) channelOrLayer;

- (NSMutableDictionary *) stateAsStyle;

- (int) symmetricSubscriptionStatus;

- (NSMutableSet *) transitionAndScope;

- (NSMutableArray *) futureStateRotation;

@end

NS_ASSUME_NONNULL_END
        
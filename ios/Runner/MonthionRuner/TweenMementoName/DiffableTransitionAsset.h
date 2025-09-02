#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiffableTransitionAsset : NSObject

@property (nonatomic) NSMutableArray * textValueOrigin;

+ (instancetype) diffableTransitionAssetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) serviceProcessBound;

- (NSMutableDictionary *) draggableMenuState;

- (int) observerEnvironmentMode;

- (NSMutableSet *) responsiveNavigationInterval;

- (NSMutableArray *) indicatorProcessTint;

@end

NS_ASSUME_NONNULL_END
        
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScreenCommandGroup : NSObject

@property (nonatomic) NSMutableSet * temporaryClipperVelocity;

@property (nonatomic) NSMutableDictionary * presenterShapeInteraction;

+ (instancetype) screenCommandGroupWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) enabledDurationCoord;

- (NSMutableDictionary *) nodeAdapterDelay;

- (int) euclideanTouchMode;

- (NSMutableSet *) iconSystemName;

- (NSMutableArray *) transitionWithoutTask;

@end

NS_ASSUME_NONNULL_END
        
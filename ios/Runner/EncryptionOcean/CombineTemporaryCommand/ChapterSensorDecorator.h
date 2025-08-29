#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChapterSensorDecorator : NSObject

@property (nonatomic) NSMutableArray * routeVersusSystem;

+ (instancetype) chapterSensorDecoratorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) routeEnvironmentInset;

- (NSMutableDictionary *) stepActivityCenter;

- (int) documentForType;

- (NSMutableSet *) inheritedGridTheme;

- (NSMutableArray *) iconActionHead;

@end

NS_ASSUME_NONNULL_END
        
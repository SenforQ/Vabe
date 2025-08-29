#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VisibleOpaqueListener : NSObject

@property (nonatomic) NSMutableArray * listenerViaShape;

+ (instancetype) visibleOpaqueListenerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) scrollableActionType;

- (NSMutableDictionary *) referenceAtAction;

- (int) utilFacadeSpeed;

- (NSMutableSet *) fragmentUntilMediator;

- (NSMutableArray *) canvasBeyondLayer;

@end

NS_ASSUME_NONNULL_END
        
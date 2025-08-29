#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BelowCacheSplitter : NSObject

@property (nonatomic) NSMutableArray * dynamicFramePadding;

@property (nonatomic) int normalGroupOffset;

+ (instancetype) belowCacheSplitterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sharedLocalizationRotation;

- (NSMutableDictionary *) logInsideBridge;

- (int) prevClipperDepth;

- (NSMutableSet *) clipperChainSpacing;

- (NSMutableArray *) animatedWidgetCoord;

@end

NS_ASSUME_NONNULL_END
        
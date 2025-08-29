#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CanvasShapeOwner : NSObject

@property (nonatomic) int persistentReferencePressure;

@property (nonatomic) int associatedAnchorCenter;

@property (nonatomic) NSMutableSet * statefulNumberFlags;

@property (nonatomic) NSMutableDictionary * viewAndShape;

+ (instancetype) canvasShapeOwnerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) grainMementoCoord;

- (NSMutableDictionary *) listenerThroughComposite;

- (int) visibleModelVisibility;

- (NSMutableSet *) controllerAgainstLayer;

- (NSMutableArray *) completerFormSkewy;

@end

NS_ASSUME_NONNULL_END
        
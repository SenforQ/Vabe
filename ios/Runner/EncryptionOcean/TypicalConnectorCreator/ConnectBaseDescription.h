#import "ReactiveImageMetadata.h"
#import "InactiveBasicService.h"
#import "QueryActionFactory.h"
#import "PinchableSizeCache.h"
#import "ContainerBufferName.h"
#import "FlexibleMaterialSpot.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConnectBaseDescription : NSObject


- (void) requestAsynchronousOperation;

- (void) serializeOverMasterObserver;

@end

NS_ASSUME_NONNULL_END
        
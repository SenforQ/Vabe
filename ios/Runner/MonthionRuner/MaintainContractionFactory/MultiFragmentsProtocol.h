#import "GranularRouteElement.h"
#import "UnderScreenVector.h"
#import "ToSubpixelProvider.h"
#import "MobileArithmeticDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MultiFragmentsProtocol : NSObject


- (void) useCurrentCompositionJob;

- (void) disconnectDisabledListener;

@end

NS_ASSUME_NONNULL_END
        
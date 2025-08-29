#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FormatEqualizationSensor : NSObject


- (void) skipBasicResponse;

- (void) streamPriorSine: (int)signatureByKind;

@end

NS_ASSUME_NONNULL_END
        
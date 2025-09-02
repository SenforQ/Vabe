#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SynchronousObserverCreator : NSObject


- (void) belowThreadError: (NSMutableArray *)ephemeralExceptionFlags;

@end

NS_ASSUME_NONNULL_END
        
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnsortedCompleterCache : NSObject


- (void) makeWebExpandedPattern: (int)uniformResultMode and: (NSMutableDictionary *)delegatePerVar;

- (void) finishReductionEvent: (NSMutableDictionary *)menuForAction;

@end

NS_ASSUME_NONNULL_END
        
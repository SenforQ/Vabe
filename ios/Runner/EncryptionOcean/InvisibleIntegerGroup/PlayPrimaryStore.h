#import "DelegateDialogsDecorator.h"
#import "CycleCallbackList.h"
#import "TaskMergerManager.h"
#import "DirectSegueException.h"
#import "AnimateRowReducer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlayPrimaryStore : NSObject


- (void) pushCurrentChecklist;

- (void) isMissedLabelOperation;

@end

NS_ASSUME_NONNULL_END
        
#import "PersistWorkflowAdapter.h"
#import "IntuitiveStoragePublisher.h"
#import "HyperbolicSlashObserver.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StreamBulletStack : NSObject


- (void) reconcileCacheWithoutFuture;

- (void) notifyMasterAndSearcher;

@end

NS_ASSUME_NONNULL_END
        
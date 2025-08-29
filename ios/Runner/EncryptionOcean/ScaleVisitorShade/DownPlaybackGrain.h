#import "TypicalStoreBase.h"
#import "ToRowSink.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DownPlaybackGrain : NSObject


- (void) createReferenceWithStorage;

- (void) persistFragmentFromRepository;

@end

NS_ASSUME_NONNULL_END
        
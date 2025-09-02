#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondChallengePicker : NSObject

@property (nonatomic) int playbackEnvironmentDirection;

@property (nonatomic) int dimensionAdapterDensity;

@property (nonatomic) NSMutableDictionary * managerTaskKind;

@property (nonatomic) NSMutableSet * interpolationAsBuffer;

+ (instancetype) secondChallengePickerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) requestAtPattern;

- (NSMutableDictionary *) flexibleOffsetTag;

- (int) disabledStreamBound;

- (NSMutableSet *) discardedLoopHead;

- (NSMutableArray *) presenterPhaseDelay;

@end

NS_ASSUME_NONNULL_END
        
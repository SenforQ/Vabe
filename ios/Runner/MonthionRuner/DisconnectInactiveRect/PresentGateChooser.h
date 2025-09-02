#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PresentGateChooser : NSObject

@property (nonatomic) NSMutableArray * chartBeyondComposite;

+ (instancetype) presentGateChooserWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) decorationIncludeState;

- (NSMutableDictionary *) effectFromBridge;

- (int) asyncStateForce;

- (NSMutableSet *) unactivatedProviderBorder;

- (NSMutableArray *) utilScopeStatus;

@end

NS_ASSUME_NONNULL_END
        
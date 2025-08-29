#import "WithLoopInfo.h"
    
@interface WithLoopInfo ()

@end

@implementation WithLoopInfo

- (void) transformSwiftAmongSingleton
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *optionActionRotation = [NSMutableArray array];
		NSString* vectorStageVisible = @"storePerValue";
		for (int i = 1; i != 0; --i) {
			[optionActionRotation addObject:[vectorStageVisible stringByAppendingFormat:@"%d", i]];
		}
		NSInteger symbolStyleTheme = [optionActionRotation count];
		int activityViaJob=0;
		for (int i = 0; i < symbolStyleTheme; i++) {
			activityViaJob += [[optionActionRotation objectAtIndex:i] intValue];
		}
		float sizeWithOperation = (float)activityViaJob / symbolStyleTheme;
		if (symbolStyleTheme > 0) {
			NSLog(@"Average: %f", sizeWithOperation);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        
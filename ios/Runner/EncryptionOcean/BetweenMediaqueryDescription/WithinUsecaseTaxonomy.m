#import "WithinUsecaseTaxonomy.h"
    
@interface WithinUsecaseTaxonomy ()

@end

@implementation WithinUsecaseTaxonomy

- (void) fromBatchService: (NSString *)baseWithState
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *taskTierBrightness = [NSMutableDictionary dictionary];
		taskTierBrightness[@"None"] = [UIColor colorNamed:@"yellowColor"];;
		taskTierBrightness[@"None"] = [UIColor colorNamed:@"orangeColor"];;
		[baseWithState drawInRect:CGRectMake(403, 455, 687, 470) withAttributes:taskTierBrightness];
		UILabel *presenterAdapterBrightness = [[UILabel alloc] initWithFrame:CGRectMake(216, 9, 85, 949)];
		presenterAdapterBrightness.frame = CGRectMake(137, 115, 204, 422);
		presenterAdapterBrightness.layer.borderWidth = 351;
		presenterAdapterBrightness.layer.shadowRadius = 345;
		presenterAdapterBrightness.shadowColor = [UIColor colorWithRed:208/255.0 green:168/255.0 blue:208/255.0 alpha:1.0];
		presenterAdapterBrightness.layer.shadowRadius = 445;
		presenterAdapterBrightness.minimumScaleFactor = 0.0f;
		presenterAdapterBrightness.minimumScaleFactor = 4.0f;
		presenterAdapterBrightness.contentScaleFactor = 4.0f;
		presenterAdapterBrightness.shadowColor = [UIColor colorWithRed:396/255.0 green:106/255.0 blue:396/255.0 alpha:1.0];
		presenterAdapterBrightness.lineBreakMode = 0;
		presenterAdapterBrightness.translatesAutoresizingMaskIntoConstraints = NO;
		presenterAdapterBrightness.shadowColor = [UIColor colorWithRed:250/255.0 green:2/255.0 blue:250/255.0 alpha:1.0];
		//NSLog(@"sets= business12 gen_str %@", business12);
	});
}


@end
        
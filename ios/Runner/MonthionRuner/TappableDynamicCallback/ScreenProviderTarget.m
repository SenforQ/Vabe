#import "ScreenProviderTarget.h"
    
@interface ScreenProviderTarget ()

@end

@implementation ScreenProviderTarget

- (void) cancelNavigatorExceptSlider
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *widgetFromVariable = [NSMutableDictionary dictionary];
		NSString* cupertinoVariableOrientation = @"actionOutsidePlatform";
		for (int i = 8; i != 0; --i) {
			widgetFromVariable[[cupertinoVariableOrientation stringByAppendingFormat:@"%d", i]] = @"numericalFlexTransparency";
		}
		NSInteger eventSincePlatform = widgetFromVariable.count;
		UITableView *containerForStructure = [[UITableView alloc] init];
		[containerForStructure setDelegate:self];
		[containerForStructure setDataSource:self];
		[containerForStructure setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[containerForStructure setRowHeight:47];
		NSString *matrixPrototypeState = @"CellIdentifier";
		[containerForStructure registerClass:[UITableViewCell class] forCellReuseIdentifier:matrixPrototypeState];
		UIRefreshControl *specifyFrameValidation = [[UIRefreshControl alloc] init];
		[specifyFrameValidation addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[containerForStructure setRefreshControl:specifyFrameValidation];
		if (eventSincePlatform > 1) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = eventSincePlatform / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", eventSincePlatform);
	});
}


@end
        
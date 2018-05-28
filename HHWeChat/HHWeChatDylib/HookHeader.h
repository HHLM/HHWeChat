//
//  HookHeader.h/Users/mac/Downloads/012--Logos/02--代码/002--LoginHookDemo/002--LoginHookDemo/TargetApp/001--LoginTest.app
//  HHWeChat
//
//  Created by Mac on 2018/5/18.
//  Copyright © 2018年 暮雨岚风. All rights reserved.
//
@interface CustomViewController

@property (nonatomic, copy) NSString* newProperty;

+ (void)classMethod;

- (NSString*)getMyName;

- (void)newMethod:(NSString*) output;

@end




@interface MMTableViewInfo
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
//-(id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;
//
//- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;
//
//- (long long)numberOfSectionsInTableView:(UITableView*)UITableView;

@end



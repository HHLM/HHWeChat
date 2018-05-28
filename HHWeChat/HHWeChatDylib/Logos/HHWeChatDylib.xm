// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>
#import "HookHeader.h"




@interface NewSettingViewController
@property (nonatomic, strong)  MMTableViewInfo *info;
@end

%hook NewSettingViewController

- (void)viewDidLoad {
    %orig;
    //添加通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
}

%new
- (void)keyboardChange:(NSNotification *)notification {
    
     UIView *view =  MSHookIvar<UIView*>(self,"_view");
    //    if (self.picking) return;
    /**
     notification.userInfo = @{
     // 键盘弹出\隐藏后的frame
     UIKeyboardFrameEndUserInfoKey = NSRect: {{0, 352}, {320, 216}},
     // 键盘弹出\隐藏所耗费的时间
     UIKeyboardAnimationDurationUserInfoKey = 0.25,
     // 键盘弹出\隐藏动画的执行节奏（先快后慢，匀速）
     UIKeyboardAnimationCurveUserInfoKey = 7
     }
     */
    
    NSDictionary *userInfo = notification.userInfo;
    
    
    
    // 动画的持续时间
    double duration = [userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    // 键盘的frame
    CGRect keyboardF = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    // 执行动画
    [UIView animateWithDuration:duration animations:^{
        
      //拿到成员变量 若是编译不过去  加上类型 NSHookIvar<UITableView*>(self,"_tabeleView")
        view.frame = CGRectMake(0,keyboardF.origin.y - CGRectGetHeight(view.frame),CGRectGetWidth(view.frame),CGRectGetHeight(view.frame));
    }];
}



- (void)onRed:(UISwitch *)swt {
    
}

%end


%hook MMTableViewInfo


//多少组
- (long long)numberOfSectionsInTableView:(UITableView *)tableView {
    if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)]) { //定位到当前视图控制器
        return %orig+1;
    }else {
        return %orig;
    }
}


- (long long)tableView:(UITableView *)tableView numberOfRowsInSection:(long long)section {
    if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)] && section == [self numberOfSectionsInTableView:tableView]-1) {
        return 2;
    }else {
        return %orig;
    }
}

- (double)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)arg2 {
    if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)] && [arg2 section] == [self numberOfSectionsInTableView:tableView]-1) {
        return 44;
    }else {
        return %orig;
    }
}


- (id)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)arg2 {
    if([tableView.nextResponder.nextResponder isKindOfClass:%c(NewSettingViewController)] &&  [arg2 section] == [self numberOfSectionsInTableView:tableView]-1) {
        static NSString *cellID = @"cellId";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0,43.5,[UIScreen mainScreen].bounds.size.width,0.5)];
            [cell addSubview:line];
            line.backgroundColor = [UIColor redColor];
            cell.backgroundColor   = [UIColor whiteColor];
//            cell.textLabel.textAlignment = NSTextAlignmentCenter;
            if ([arg2 row] == 0) {
                UISwitch *swt  = [[UISwitch alloc] init];
//                [swt addTarget:self action:@selector(onRed:) forControlEvents:UIControlEventValueChanged];
                cell.accessoryView = swt;
            }else {
                UITextField *text = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
                text.borderStyle =  UITextBorderStyleRoundedRect;
                text.placeholder = @"设置时间";
                cell.accessoryView = text;
            }
        }
        if ( [arg2 row] == 0) {
            cell.textLabel.text = @"自动抢红包";
        }else {
            cell.textLabel.text = @"红包延时(秒)";
        }
        return cell;
    }else {
        return %orig;
    }
}

- (void)scrollViewWillBeginDragging:(id)arg1 {
    [MSHookIvar<UITableView *>(self,"_tableView") endEditing:YES];
}

- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2 {
    return %orig;
}





%end




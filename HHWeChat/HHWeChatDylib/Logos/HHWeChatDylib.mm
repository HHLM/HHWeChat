#line 1 "/Users/mac/GitHub/Works/HHLM/HHWeChat/HHWeChat/HHWeChatDylib/Logos/HHWeChatDylib.xm"


#import <UIKit/UIKit.h>
#import "HookHeader.h"




@interface NewSettingViewController
@property (nonatomic, strong)  MMTableViewInfo *info;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class MMTableViewInfo; @class NewSettingViewController; 
static void (*_logos_orig$_ungrouped$NewSettingViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$keyboardChange$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, NSNotification *); static void (*_logos_orig$_ungrouped$NewSettingViewController$onRed$)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UISwitch *); static void _logos_method$_ungrouped$NewSettingViewController$onRed$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL, UISwitch *); static long long (*_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *); static long long (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, long long); static double (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static double _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static id (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static id _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void (*_logos_orig$_ungrouped$MMTableViewInfo$scrollViewWillBeginDragging$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$MMTableViewInfo$scrollViewWillBeginDragging$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST, SEL, id, id); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NewSettingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NewSettingViewController"); } return _klass; }
#line 13 "/Users/mac/GitHub/Works/HHLM/HHWeChat/HHWeChat/HHWeChatDylib/Logos/HHWeChatDylib.xm"


static void _logos_method$_ungrouped$NewSettingViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$NewSettingViewController$viewDidLoad(self, _cmd);
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
}


static void _logos_method$_ungrouped$NewSettingViewController$keyboardChange$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * notification) {
    
     UIView *view =  MSHookIvar<UIView*>(self,"_view");
    
    









    
    NSDictionary *userInfo = notification.userInfo;
    
    
    
    
    double duration = [userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    
    CGRect keyboardF = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    
    [UIView animateWithDuration:duration animations:^{
        
      
        view.frame = CGRectMake(0,keyboardF.origin.y - CGRectGetHeight(view.frame),CGRectGetWidth(view.frame),CGRectGetHeight(view.frame));
    }];
}



static void _logos_method$_ungrouped$NewSettingViewController$onRed$(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * swt) {
    
}








static long long _logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()]) { 
        return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView)+1;
    }else {
        return _logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$(self, _cmd, tableView);
    }
}


static long long _logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, long long section) {
    if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()] && section == [self numberOfSectionsInTableView:tableView]-1) {
        return 2;
    }else {
        return _logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
    }
}

static double _logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * arg2) {
    if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()] && [arg2 section] == [self numberOfSectionsInTableView:tableView]-1) {
        return 44;
    }else {
        return _logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, arg2);
    }
}


static id _logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * arg2) {
    if([tableView.nextResponder.nextResponder isKindOfClass:_logos_static_class_lookup$NewSettingViewController()] &&  [arg2 section] == [self numberOfSectionsInTableView:tableView]-1) {
        static NSString *cellID = @"cellId";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0,43.5,[UIScreen mainScreen].bounds.size.width,0.5)];
            [cell addSubview:line];
            line.backgroundColor = [UIColor redColor];
            cell.backgroundColor   = [UIColor whiteColor];

            if ([arg2 row] == 0) {
                UISwitch *swt  = [[UISwitch alloc] init];

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
        return _logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, arg2);
    }
}

static void _logos_method$_ungrouped$MMTableViewInfo$scrollViewWillBeginDragging$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    [MSHookIvar<UITableView *>(self,"_tableView") endEditing:YES];
}

static void _logos_method$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MMTableViewInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    return _logos_orig$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$(self, _cmd, arg1, arg2);
}









static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NewSettingViewController = objc_getClass("NewSettingViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewSettingViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$NewSettingViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$NewSettingViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(keyboardChange:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$keyboardChange$, _typeEncoding); }MSHookMessageEx(_logos_class$_ungrouped$NewSettingViewController, @selector(onRed:), (IMP)&_logos_method$_ungrouped$NewSettingViewController$onRed$, (IMP*)&_logos_orig$_ungrouped$NewSettingViewController$onRed$);Class _logos_class$_ungrouped$MMTableViewInfo = objc_getClass("MMTableViewInfo"); MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$numberOfSectionsInTableView$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$numberOfRowsInSection$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$heightForRowAtIndexPath$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$cellForRowAtIndexPath$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(scrollViewWillBeginDragging:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$scrollViewWillBeginDragging$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$scrollViewWillBeginDragging$);MSHookMessageEx(_logos_class$_ungrouped$MMTableViewInfo, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$MMTableViewInfo$tableView$didSelectRowAtIndexPath$);} }
#line 144 "/Users/mac/GitHub/Works/HHLM/HHWeChat/HHWeChat/HHWeChatDylib/Logos/HHWeChatDylib.xm"

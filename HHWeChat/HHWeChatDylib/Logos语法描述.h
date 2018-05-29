// See http://iphonedevwiki.net/index.php/Logos



/**
 .x 文件支持 Logos语言C的语法法
 .xm 文件支持 Logos语言 C 、C++、OC的语法法
 
 用到的就是苹果的runtime的 swizzle交换方法
*/



/**
 block level
 
 %group 分组的 分模块
 %hook class hook的类
 
 %subclass 创建一个类
 %new 在新建的类里面添加新的方法 如果方法和原始方法一样 就覆盖原始方法
 
 %new 创建一个新方法
 - (vold)method {
 %orig //调动此方法的原始语法（保持原来的方法实现） 待带返回值 就可以写 return %orig()
 里面可以n个参数
 }
 %end
 %end
 
 Top level
 
 %ctor  //构造函数 constructor
 %dtor  //析构函数
 %init(group1) //初始化
 %log; //输出 消息发送的时候内部的参数， 类似于NSLog
 
 %c 拿到一个class
 
 Function Level
*/

#import <UIKit/UIKit.h>
#import "HookHeader.h"



//不写group的时候会有隐式默认的_ungroup
//也会有个默认的%ctor构造函数
%group group1

//hook CustomViewController这个类
%hook CustomViewController

+ (void)classMethod
{
    %log;
    
    %orig; //调用此方法的原始方法
}

//创建一个新的方法
%new
-(void)newMethod:(NSString*) output{
    NSLog(@"This is a new method : %@", output);
    [%c(CustomViewController) classMethod];
}

%new
- (id)newProperty {
    return objc_getAssociatedObject(self, @selector(newProperty));
}

%new
- (void)setNewProperty:(id)value {
    objc_setAssociatedObject(self, @selector(newProperty), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString*)getMyName
{
    %log; //输出 消息发送的时候内部的参数， 类似于NSLog
    
    NSString* password = MSHookIvar<NSString*>(self,"_password");
    
    NSLog(@"password:%@", password);
    
    [%c(CustomViewController) classMethod];
    
    [self newMethod:@"output"];
    
    self.newProperty = @"newProperty";
    
    NSLog(@"newProperty : %@", self.newProperty);
    
    return %orig();
}

%end

%end

%group group2


%end
//构造函数 constructor
%ctor {
    
    //在这里片判断初始化那个组
    NSString *verson = [UIDevice currentDevice].systemVersion;
    
    if(verson.doubleValue >= 11.2) {
        %init(group1) //初始化
    }else {
        %init(group2)
    }
    // %init(group1)%init(group2) //初始化  这样2会把1覆盖掉
}

//析构函数
%dtor {
    
}


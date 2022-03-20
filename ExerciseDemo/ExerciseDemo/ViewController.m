//
//  ViewController.m
//  ExerciseDemo
//
//  Created by WANGDONGLIANG on 2021/10/26.
//

#import "ViewController.h"

typedef NSString *(^Complete)(int,int);

typedef int (^maxNum) (int,int);

typedef enum : NSUInteger {
    MyEnumValueA,
    MyEnumValueB,
    MyEnumValueC,
} MyEnum;

@interface ViewController ()

@property(nonatomic,assign) Complete mycomplete;

@property(nonatomic,assign) NSArray *(^BackComplete)(NSString *);

@property(nonatomic,assign)void(^backAction)(int,int);

@property(nonatomic,assign)int (^addAction)(int,int);

@property(nonatomic,assign) maxNum maxblock;

@end

@implementation ViewController

/*
 block写法
 作为属性：返回类型 +（^block名称）(参数类型，参数类型)
 作为参数：(返回类型 +(^)(参数类型，参数类型))block名称
 定义一个block：block = ^(参数1，参数2){
 
                     };
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self method:^void(int a, int b) {
    }];

    _backAction = ^(int a,int b)
    {
        
    };
    [self method:_backAction];

     _addAction = ^(int a,int b){
         return a+b;
     };
     _addAction(3,4);

    Complete complete = ^(int a,int b)
    {
        return @"rr";
    };
complete(4,5);

    
    maxNum max = ^(int a,int b){
        return a+ b;
    };
    _maxblock = max;
    int m = _maxblock(4,5);
}

-(void)method:(void(^)(int,int))complete
{
    if (complete) {
        complete(5,6);
    }
}

@end

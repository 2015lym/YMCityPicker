//
//  ViewController.m
//  YMCityPickerDemo
//
//  Created by Lym on 2016/10/27.
//  Copyright © 2016年 Lym. All rights reserved.
//

#import "ViewController.h"
#import "TLCityPickerController.h"

@interface ViewController ()<TLCityPickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"城市选择Demo";
    
    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc]
                                               initWithTitle:@"北京"
                                               style:UIBarButtonItemStylePlain
                                               target:self
                                               action:@selector(LeftclickBtn)]];
}

//左上角按钮的点击事件
-(void)LeftclickBtn
{
    TLCityPickerController *cityPickerVC = [[TLCityPickerController alloc] init];
    cityPickerVC.delegate = self;
    cityPickerVC.cityname = self.navigationItem.leftBarButtonItem.title;
    // 最近访问城市，如果不设置，将自动管理
    //    cityPickerVC.commonCitys = [[NSMutableArray alloc] initWithArray: @[@"1400010000", @"100010000"]];
    cityPickerVC.hotCitys = @[@"100010000", @"200010000", @"300110000", @"300210000", @"600010000"];
    //也可以用present方式跳转
    [self.navigationController pushViewController:cityPickerVC animated:YES];
}

//选择后执行的方法
- (void) cityPickerController:(TLCityPickerController *)cityPickerViewController didSelectCity:(TLCity *)city
{
    NSLog(@"%@",city.cityName);
    self.navigationItem.leftBarButtonItem.title = city.cityName;
    [cityPickerViewController.navigationController popViewControllerAnimated:YES];
}

//取消选择后执行的方法
- (void) cityPickerControllerDidCancel:(TLCityPickerController *)cityPickerViewController
{
    [cityPickerViewController.navigationController popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

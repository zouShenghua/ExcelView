//
//  ViewController.m
//  ExcelView
//
//  Created by 维奕 on 2017/8/30.
//  Copyright © 2017年 维奕. All rights reserved.
//

#import "ViewController.h"
#import "LFFExcel.h"
@interface ViewController ()<LFFExcelDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LFFExcelData *ds = [[LFFExcelData alloc] init];
    ds.titles = (NSMutableArray*)@[@"时长",@"使用流量",@"地点"];
    ds.data = [NSMutableArray arrayWithObjects:
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"2016-06-17",@"308M",@"详情"],
               @[@"",@"",@""],@[@"",@"",@""],@[@"",@"",@""],@[@"",@"",@""],
               nil];
    
    //设置表格的x
    ds.excelX = 10;
    //设置表格的y
    ds.excelY = 100;
    //设置表格的单元格高度
    ds.cellHeight = 40;
    
    //设置表格标题背景色
    ds.titleColor = [UIColor redColor];
    //设置表格单元格颜色
    ds.cellColor = [UIColor whiteColor];
    //设置单元格网格线颜色
    ds.lineColor = [UIColor blueColor];
    //设置是否可以点击
    ds.anction = YES;
    
    //使用数据类 LFFExcelData 的实例对象 来生成 表格对象
    LFFExcelComponent *lffexcelComponent = [[LFFExcelComponent alloc] initWithdata:ds];
    lffexcelComponent.delegate  = self;
    [self.view addSubview:lffexcelComponent];
    
}

#pragma mark LFFExcelDelegate
-(void)btnAction:(NSInteger)index{
    //这里处理事件操作
    NSLog(@"表格单元格点击事件==%ld",(long)index);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

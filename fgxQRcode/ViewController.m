//
//  ViewController.m
//  fgxQRcode
//
//  Created by 123 on 16/9/26.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"
#import "SetUpQRCode.h"
#import "GenerateQRCode.h"

#define screenHeight [UIScreen mainScreen].bounds.size.height
#define screenWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

//为了输入网址
@property (strong,nonatomic) UITextField *textField;
//为了显示二维码
@property (strong,nonatomic) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
    [self setQRCode];
}

#pragma mark - 设置二维码
-(void)setQRCode
{
    UIButton * setUpQRCode=[[UIButton alloc] initWithFrame:CGRectMake((screenWidth-80)/2, 200, 80, 50)];
    [setUpQRCode setTitle:@"扫描" forState:UIControlStateNormal];
    [setUpQRCode setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:setUpQRCode];
    
    UIButton * generateQRCode=[[UIButton alloc] initWithFrame:CGRectMake((screenWidth-80)/2, 300, 80, 50)];
    [generateQRCode setTitle:@"生成" forState:UIControlStateNormal];
    [generateQRCode setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:generateQRCode];
    
    [setUpQRCode addTarget:self action:@selector(clickSetUpQRCode) forControlEvents:UIControlEventTouchUpInside];
    [generateQRCode addTarget:self action:@selector(clickGenerateQRCode) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(erWeima:) name:@"二维码" object:nil];
}

#pragma mark 二维码点击事件
//把生成文字显示出来
-(void)erWeima:(NSNotification *)notification
{
    id sendValue=[notification object];
    UILabel * label=[[UILabel alloc] initWithFrame:CGRectMake(100, 300, 200, 100)];
    label.backgroundColor=[UIColor redColor];
    label.text=[NSString stringWithFormat:@"%@",sendValue];
    label.numberOfLines=0;
    [self.view addSubview:label];
}

-(void)clickSetUpQRCode
{
    SetUpQRCode * SER=[[SetUpQRCode alloc] init];
    SER.title=@"扫描二维码";
    [self.navigationController pushViewController:SER animated:YES];
//    [self presentViewController:SER animated:YES completion:^{
//    
//    }];
}

-(void)clickGenerateQRCode
{
    GenerateQRCode * SER=[[GenerateQRCode alloc] init];
    SER.title=@"生成二维码";
    [self.navigationController pushViewController:SER animated:YES];
//    [self presentViewController:SER animated:YES completion:^{
//    
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

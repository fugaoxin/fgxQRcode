# fgxQRcode
二维码扫描与生成

使用：

 1.扫描二维码

  SetUpQRCode * SER=[[SetUpQRCode alloc] init];

  SER.title=@"扫描二维码";

  [self.navigationController pushViewController:SER animated:YES];

 2.生成二维码

  GenerateQRCode * SER=[[GenerateQRCode alloc] init];

  SER.title=@"生成二维码";

  [self.navigationController pushViewController:SER animated:YES];
 
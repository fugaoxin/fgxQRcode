# fgxQRcode
二维码扫描与生成

使用：
 1.扫描二维码\n
  SetUpQRCode * SER=[[SetUpQRCode alloc] init];\n
  SER.title=@"扫描二维码";\n
  [self.navigationController pushViewController:SER animated:YES];

 2.生成二维码
  GenerateQRCode * SER=[[GenerateQRCode alloc] init];\n
  SER.title=@"生成二维码";\n
  [self.navigationController pushViewController:SER animated:YES];
 
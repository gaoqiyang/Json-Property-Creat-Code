#import "AppDelegate.h"
#import "CreatPropert.h"
#import "AFNetworking.h"

#import "FMDBCreat.h"
#import "Person.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *UrlPath;
@property (weak) IBOutlet NSTextField *SavaPath;
- (IBAction)Begin_creat:(id)sender;
@property (weak) IBOutlet NSButton *guidang;
@property (weak) IBOutlet NSTextField *ModelName;
- (IBAction)MoreAction:(id)sender;
@property (weak) IBOutlet NSButton *moreButton;
@property (weak) IBOutlet NSTextField *JsonDataView;
- (IBAction)JsonAction:(id)sender;

@property (weak) IBOutlet NSButton *tishiAndOpen;

- (IBAction)Open:(id)sender;

@property (weak) IBOutlet NSButton *NSNULL;
@property (weak) IBOutlet NSButton *NSNUMBER;
@property (weak) IBOutlet NSButton *NSDATE;

@property (weak) IBOutlet NSButton *KVC;
@property (weak) IBOutlet NSButton *CoreData;
@property (weak) IBOutlet NSButton *NOBoth;

@property (nonatomic,retain)NSDictionary *dict;
@property (nonatomic,retain)NSArray *arr;

@property (nonatomic,copy)NSString *filePath;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    [self.moreButton setTitle:@"展开更多"];
    CGRect cg=self.window.frame;
    cg.size.height-=300;
    [self.window setFrame:cg display:NO animate:NO];
    
    //加载一些初始化数据
    NSString *HomePath=NSHomeDirectory();
    self.SavaPath.stringValue=[HomePath stringByAppendingString:@"/Desktop/MyModel/"];
    self.arr=[NSArray array];
    self.dict=[NSDictionary dictionary];
    
}

- (void)removeData{
    self.arr=[NSArray array];
    self.dict=[NSDictionary dictionary];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
}
//开始创建文件到指定路径下

- (IBAction)Begin_creat:(id)sender {
    self.filePath=[self.SavaPath.stringValue stringByAppendingString:[self.ModelName.stringValue stringByAppendingString:@".plist"]];
    //网络请求数据解析成字典
    [self auto_creat];
    //本地文件解析成字典
//    NSString *filePath=@"/Users/mac/Desktop/OOO.plist";
//    [self localFileToModelWithFilePath:filePath];
}
- (void)JsonToPlistWithFilePath:(NSString *)FilepPath{
        NSFileManager *fm=[NSFileManager defaultManager];
        [fm createFileAtPath:FilepPath contents:nil attributes:nil];
    if ([fm fileExistsAtPath:FilepPath]) {
        if (_dict!=nil) {
            NSMutableDictionary *temp_dic=[NSMutableDictionary dictionaryWithDictionary:_dict];
            [[self getUseableObjectWithOldObject:temp_dic] writeToFile:FilepPath atomically:YES];
            system([[@"open " stringByAppendingString:FilepPath] UTF8String]);
        }else if(_arr!=nil){
            NSMutableArray *temp_arr=[NSMutableArray arrayWithArray:_arr];
            [[self getUseableObjectWithOldObject:temp_arr] writeToFile:FilepPath atomically:YES];
            system([[@"open " stringByAppendingString:FilepPath] UTF8String]);
        }
    }
}
/**因为有的字段为NULL导致数组或者字典不能正常的保存*/
- (id)getUseableObjectWithOldObject:(id)oldObj{
    
    if([oldObj isKindOfClass:[NSDictionary class]]){//如果obj对象是字典
        oldObj=[NSMutableDictionary dictionaryWithDictionary:oldObj];
        id objtemp;
        for (NSInteger i=0; i<[oldObj allKeys].count; i++) {//开始遍历字典里面的键值对
            objtemp=[oldObj allKeys][i];
            
            if ([oldObj[objtemp] isKindOfClass:[NSString class]]) {
                if (((NSString *)oldObj[objtemp]).length==0) {
                    [oldObj setValue:@"" forKey:objtemp];
                }
            }
            else if([oldObj[objtemp] isKindOfClass:[NSArray class]]){//如果字典里面是数组
                
                oldObj[objtemp]=[self getUseableObjectWithOldObject:oldObj[objtemp]];
            }
            else if ([oldObj[objtemp] isKindOfClass:[NSDictionary class]]){//如果字典里面是字典
                oldObj[objtemp]=[self getUseableObjectWithOldObject:oldObj[objtemp]];
            }
            else if ([oldObj[objtemp] isKindOfClass:[NSNull class]]){//如果字典里面是nsnull
                [oldObj setValue:@"" forKey:objtemp];
            }
            else if([oldObj[objtemp] isKindOfClass:[NSData class]]){//如果字典里面是NSData
                [oldObj setValue:@"NSData" forKey:objtemp];
            }
            else if([oldObj[objtemp] isKindOfClass:[NSDate class]]){//如果字典里面是NSDate
                [oldObj setValue:[NSString stringWithFormat:@"NSDate:%@",oldObj[objtemp]] forKey:objtemp];
                
            }
        }
    }
    else if([oldObj isKindOfClass:[NSArray class]]){//如果obj对象是数组
        oldObj=[NSMutableArray arrayWithArray:oldObj];
        id objtemp;
        for (NSInteger i=0; i<[oldObj count]; i++) {
            @autoreleasepool {
                objtemp=oldObj[i];
                objtemp=[self getUseableObjectWithOldObject:objtemp];
            }
        }
    }
    return oldObj;
}
- (void)JsonToPlistWithFilePath:(NSString *)FilepPath withDicOrArr:(id)dicOrArr{
    NSFileManager *fm=[NSFileManager defaultManager];
    [fm createFileAtPath:FilepPath contents:nil attributes:nil];
    if([fm fileExistsAtPath:FilepPath]){
        if([dicOrArr isKindOfClass:[NSArray class]]){
            NSArray *arr=(NSArray *)dicOrArr;
            [arr writeToFile:FilepPath atomically:YES];
        }else if([dicOrArr isKindOfClass:[NSDictionary class]]){
            NSDictionary *dicM=(NSDictionary *)dicOrArr;
            [dicM writeToFile:FilepPath atomically:YES];
        }
        system([[@"open " stringByAppendingString:FilepPath] UTF8String]);
    }
}
- (void)auto_creat{
    [self.tishiAndOpen setTitle:@"正在生成中..."];
    if(self.UrlPath.stringValue.length==0){
        [self.tishiAndOpen setTitle:@"网址不能为空"];
        return;
    }
    if([self judgURL:self.UrlPath.stringValue]==NO){
        [self.tishiAndOpen setTitle:@"网址存在%?控制符"];
        return;
    }
    if(self.ModelName.stringValue.length==0){
        [self.tishiAndOpen setTitle:@"请输入数据模型名"];
        return;
    }
    //判断保存路径是否存在
    if(self.SavaPath.stringValue.length>0){
        //判断用户是否直接保存到了桌面
        if([self.SavaPath.stringValue isEqualToString:[NSHomeDirectory() stringByAppendingString:@"/Desktop/"]]||[self.SavaPath.stringValue isEqualToString:[NSHomeDirectory() stringByAppendingString:@"/Desktop"]]){
            [self.tishiAndOpen setTitle:@"请不要文件直接存在桌面上"];
            return;
        }
        if([self.SavaPath.stringValue hasSuffix:@"/"]==NO){
            NSString *tmp=self.SavaPath.stringValue;
            self.SavaPath.stringValue=[tmp stringByAppendingString:@"/"];
        }
        
        //GET请求
        if ([self.UrlPath.stringValue rangeOfString:@"@POST@"].location==NSNotFound) {
            //开始请求数据
            AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
            NSString *chineseUrl=[self.UrlPath.stringValue stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            //GET请求
            [manager GET:chineseUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
                _dict=responseObject;
                if([responseObject isKindOfClass:[NSDictionary class]]){
                    _dict=responseObject;
                    if(_dict==nil){
                        [self.tishiAndOpen setTitle:@"请求的网路数据有误"];
                        return ;
                    }
                }
                else if([responseObject isKindOfClass:[NSArray class]]){
                    _arr=responseObject;
                    if(_arr==nil){
                        [self.tishiAndOpen setTitle:@"请求的网路数据有误"];
                        return ;
                    }
                }
                [self succees];
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                [self.tishiAndOpen setTitle:@"请检查网址"];
                return;
            }];
        }
        //POST请求
        else{
            AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
            
            NSString *realUrl=[self.UrlPath.stringValue substringToIndex:[self.UrlPath.stringValue rangeOfString:@"@POST@"].location];
            NSString *chineseUrl=[realUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            NSDictionary *parameters=[self getDicParameters:[self.UrlPath.stringValue substringFromIndex:[self.UrlPath.stringValue rangeOfString:@"@POST@"].location+6]];
            //POST请求
            [manager POST:chineseUrl parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
                _dict=responseObject;
                if([responseObject isKindOfClass:[NSDictionary class]]){
                    _dict=responseObject;
                    if(_dict==nil){
                        [self.tishiAndOpen setTitle:@"请求的网路数据有误"];
                        return ;
                    }
                }
                else if([responseObject isKindOfClass:[NSArray class]]){
                    _arr=responseObject;
                    if(_arr==nil){
                        [self.tishiAndOpen setTitle:@"请求的网路数据有误"];
                        return ;
                    }
                }
                [self succees];
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                [self.tishiAndOpen setTitle:@"请检查网址"];
                return;
            }];
        }
        
    }else{
        [self.tishiAndOpen setTitle:@"保存路径不能为空"];
    }
    [self removeData];
}

- (NSDictionary *)getDicParameters:(NSString *)Parameters{
    //例如:   username=ceshi&password=123456
    NSMutableDictionary *dicM=[NSMutableDictionary dictionary];
    
    NSArray *parametersArr=[Parameters componentsSeparatedByString:@"&"];
    
    for (NSString *eachParameters in parametersArr) {
        NSArray *subParametersArr=[eachParameters componentsSeparatedByString:@"="];
        [dicM setValue:subParametersArr[1] forKey:subParametersArr[0]];
    }
    NSLog(@"dicM=%@",dicM);
    return dicM;
}
- (BOOL)returnBool:(NSInteger)state{
    if(state==1)
        return YES;
    else return NO;
}

- (NSInteger)returnNSInteger{
    if(self.KVC.state==1)
        return 1;
    else if(self.CoreData.state==1){
        return 2;
    }
    else if(self.NOBoth.state==1){
        return 3;
    }
    return 1;//默认返回0
}

- (BOOL)exsistStr:(NSString *)str InURL:(NSString *)url{
    if([url rangeOfString:str].location!=NSNotFound)
        return YES;
    else return NO;
}
- (BOOL)judgURL:(NSString *)url{
    if([self exsistStr:@"%d" InURL:url]||[self exsistStr:@"%s" InURL:url]||[self exsistStr:@"%c" InURL:url]||[self exsistStr:@"%f" InURL:url]||[self exsistStr:@"%hhd" InURL:url]||[self exsistStr:@"%ld" InURL:url])//等等,可以加
        return NO;
    return YES;
}
- (void) deleteOldDirectory{
    //删除原先的文件夹
    BOOL yes=YES;
    if([[NSFileManager defaultManager]fileExistsAtPath:self.SavaPath.stringValue isDirectory:&yes]){
        [[NSFileManager defaultManager]removeItemAtPath:self.SavaPath.stringValue error:nil];
    }
}
- (void)succees{
    if(_dict!=nil){
        //删除原先的文件夹
        [self deleteOldDirectory];
        [CreatPropert clearTextWithModelName:self.ModelName.stringValue withGiveData:[self returnNSInteger]];
        [CreatPropert creatProperty:_dict fileName:self.ModelName.stringValue WithContext:@"" savePath:self.SavaPath.stringValue withNSNULL:[self returnBool:self.NSNULL.state] withNSDATE:[self returnBool:self.NSDATE.state] withNSNUMBER:[self returnBool:self.NSNUMBER.state] withGiveData:[self returnNSInteger] withModelName:self.ModelName.stringValue withFatherClass:@"" needEcoding:self.guidang.state];
        [CreatPropert saveTextWithModelName:self.ModelName.stringValue savePath:self.SavaPath.stringValue];
        [self.tishiAndOpen setTitle:@"生成成功,打开文件夹"];
        [self JsonToPlistWithFilePath:self.filePath];
    }
    else if(_arr!=nil){
        //删除原先的文件夹
         [self deleteOldDirectory];
        [CreatPropert clearTextWithModelName:self.ModelName.stringValue withGiveData:[self returnNSInteger]];
        [CreatPropert creatProperty:_arr fileName:self.ModelName.stringValue WithContext:@"" savePath:self.SavaPath.stringValue withNSNULL:[self returnBool:self.NSNULL.state] withNSDATE:[self returnBool:self.NSDATE.state] withNSNUMBER:[self returnBool:self.NSNUMBER.state] withGiveData:[self returnNSInteger] withModelName:self.ModelName.stringValue withFatherClass:@"" needEcoding:self.guidang.state];
        [CreatPropert saveTextWithModelName:self.ModelName.stringValue savePath:self.SavaPath.stringValue];
        [self.tishiAndOpen setTitle:@"生成成功,打开文件夹"];
        [self JsonToPlistWithFilePath:self.filePath];
    }
    else [self.tishiAndOpen setTitle:@"生成失败"];
    [FMDBCreat writeToFileWithFilePath:self.SavaPath.stringValue];
}
- (void)localFileToModelWithFilePath:(NSString *)filePath{
    //删除原先的文件夹
    [self deleteOldDirectory];
    
    NSDictionary *dic=[NSDictionary dictionaryWithContentsOfFile:filePath];
    
    [CreatPropert creatProperty:dic fileName:self.ModelName.stringValue WithContext:@"" savePath:self.SavaPath.stringValue withNSNULL:[self returnBool:self.NSNULL.state] withNSDATE:[self returnBool:self.NSDATE.state] withNSNUMBER:[self returnBool:self.NSNUMBER.state] withGiveData:[self returnNSInteger] withModelName:self.ModelName.stringValue withFatherClass:@"" needEcoding:self.guidang.state];
    
    [self.tishiAndOpen setTitle:@"生成成功,打开文件夹"];
}

- (IBAction)KVCaction:(id)sender {
    if(self.KVC.state==1){
        self.CoreData.state=0;
        self.NOBoth.state=0;
    }else if(self.CoreData.state==0){
        self.NOBoth.state=1;
    }
}
- (IBAction)CoreDataaction:(id)sender {
    if(self.CoreData.state==1){
        self.KVC.state=0;
        self.NOBoth.state=0;
    }else if(self.KVC.state==0){
        self.NOBoth.state=1;
    }
}
- (IBAction)NoBothaction:(id)sender {
    if(self.NOBoth.state==1){
        self.KVC.state=0;
        self.CoreData.state=0;
    }else{
        self.KVC.state=1;
    }
}

- (IBAction)Open:(id)sender {
    if([self.tishiAndOpen.title isEqualToString:@"生成成功,打开文件夹"]){
        system([[@"open " stringByAppendingString:self.SavaPath.stringValue] UTF8String]);
    }
}
- (IBAction)MoreAction:(id)sender {
    if([self.moreButton.title isEqualToString:@"展开更多"]){
        [self.moreButton setTitle:@"收拢"];
        CGRect cg=self.window.frame;
        cg.size.height+=300;
        [self.window setFrame:cg display:YES animate:NO];
    }else{
        [self.moreButton setTitle:@"展开更多"];
        CGRect cg=self.window.frame;
        cg.size.height-=300;
        [self.window setFrame:cg display:YES animate:NO];
    }
}
- (IBAction)JsonAction:(id)sender {
    if(self.ModelName.stringValue.length==0){
        [self.tishiAndOpen setTitle:@"请输入数据模型名"];
        return;
    }
    self.filePath=[self.SavaPath.stringValue stringByAppendingString:[self.ModelName.stringValue stringByAppendingString:@".plist"]];
    //判断保存路径是否存在
    if(self.SavaPath.stringValue.length>0){
        //判断用户是否直接保存到了桌面
        if([self.SavaPath.stringValue isEqualToString:[NSHomeDirectory() stringByAppendingString:@"/Desktop/"]]||[self.SavaPath.stringValue isEqualToString:[NSHomeDirectory() stringByAppendingString:@"/Desktop"]]){
            [self.tishiAndOpen setTitle:@"请不要文件直接存在桌面上"];
            return;
        }
        if([self.SavaPath.stringValue hasSuffix:@"/"]==NO){
            NSString *tmp=self.SavaPath.stringValue;
            self.SavaPath.stringValue=[tmp stringByAppendingString:@"/"];
        }
        NSString *strJson=self.JsonDataView.stringValue;
        _dict=[NSJSONSerialization JSONObjectWithData:[strJson dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:nil];
        if(_dict==nil){
            _arr=[NSJSONSerialization JSONObjectWithData:[strJson dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:nil];
            if(_arr==nil){
                [self.tishiAndOpen setTitle:@"Json数据有误"];
                return;
            }
        }
        [self succees];
        if(_dict!=nil){
            [self JsonToPlistWithFilePath:self.filePath withDicOrArr:_dict];
        }else if(_arr!=nil){
            [self JsonToPlistWithFilePath:self.filePath withDicOrArr:_arr];
        }
    }else{
        [self.tishiAndOpen setTitle:@"保存路径不能为空"];
    }
    [self removeData];
}
@end

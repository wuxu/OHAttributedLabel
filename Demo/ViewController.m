//
//  ViewController.m
//  Demo
//
//  Created by 林柏参 on 15/3/30.
//  Copyright (c) 2015年 BaiCanLin. All rights reserved.
//

#import "ViewController.h"
#import "OHAttributedLabel.h"
//#import "NSAttributedString+Attributes.h"
//#import "OHASBasicMarkupParser.h"
//#import "UIAlertView+Commodity.h"
#import "OHASBasicHTMLParser.h"
//#import "NSString+Base64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    OHAttributedLabel* m_content = [[OHAttributedLabel alloc] initWithFrame:CGRectMake(0, 100, 180, 60)];
    m_content.centerVertically = YES;
    m_content.automaticallyAddLinksForType = NSTextCheckingAllTypes;
    
    m_content.backgroundColor = [UIColor redColor];
    [self.view addSubview:m_content];
    
    NSString *str = @"889111";
    NSString * allStr = [NSString string];
    for (int i = 0; i < str.length; i++) {
        NSString * test = [str substringWithRange:NSMakeRange(i,1)];
        allStr = [NSString stringWithFormat:@"%@[%@]",allStr, test];
        
    }
    NSMutableAttributedString* mas = [OHASBasicHTMLParser attributedStringByProcessingMarkupInString:allStr];
    [mas setFont:[UIFont systemFontOfSize:14]];
    m_content.attributedText =  mas;
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

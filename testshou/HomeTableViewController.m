//
//  HomeTableViewController.m
//  testshou
//
//  Created by 全球喵喵 on 16/3/21.
//  Copyright © 2016年 全球喵喵. All rights reserved.
//

#import "HomeTableViewController.h"

@interface HomeTableViewController ()
@property (nonatomic,retain)UIWebView* webview;
@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
   // UITableView
    
    UIView* headerview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 325, 150)];
    
    headerview.layer.contents = (id)[UIImage imageNamed:@"lunbo.png"].CGImage;
    
    self.tableView.tableHeaderView = headerview;
    
    
    self.tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    
    
    
    UIWebView* web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    
    self.webview = web;
    
    NSURL* url = [NSURL URLWithString:@"http://www.baidu.com"];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    
    [web loadRequest:request];
    

    UIBarButtonItem* right = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"search.png"] style:UIBarButtonItemStyleDone target:self action:@selector(clicksearch)];
    
    
    self.navigationItem.rightBarButtonItem = right;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 6;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* reusestr = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusestr];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusestr];
    }
    
    

    
    switch (indexPath.section) {
        case 0:
            cell.backgroundColor = [UIColor purpleColor];
            [cell addSubview:self.webview];
            break;
        case 1:
            cell.backgroundColor = [UIColor redColor];
            break;
        case 2:
            cell.backgroundColor = [UIColor purpleColor];
            break;
        case 3:
            cell.backgroundColor = [UIColor blueColor];
            break;
            
        case 4:
            cell.backgroundColor = [UIColor redColor];
            break;

        default:
            cell.backgroundColor = [UIColor blueColor];
            break;
    }

    
    return cell;
}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{


    switch (indexPath.section) {
        case 0:
            return 200;
            break;
        case 1:
            return 100;
            break;
            
        case 2:
            return 100;
            break;
            
        case 3:
            return 100;
            break;
            
        case 4:
            return 100;
            break;
            
        case 5:
            return 100;
            break;
            

        default:
            break;
    }
    return 100;

}


- (void)clicksearch{


    NSLog(@"点击了search按钮");
}

@end

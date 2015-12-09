//
//  ViewController.m
//  celllien
//
//  Created by jiaxin on 15/12/9.
//  Copyright © 2015年 jiaxin. All rights reserved.
//

#import "ViewController.h"
#import "BaseBorderCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:return 1; break;
        case 1:return 2; break;
        case 2:return 3; break;
        case 3:return 2; break;
        case 4:return 1; break;
        case 5:return 5; break;
        case 6:return 2; break;
        case 7:return 3; break;
        case 8:return 1; break;
        case 9:return 2; break;
        default:return 0;break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BaseBorderCell *cell = [BaseBorderCell cellWithTableView:tableView indexPath:indexPath];
    cell.contentBorderColor = [UIColor grayColor];
    cell.contentBackgroundColor = [UIColor lightGrayColor];
    cell.contentBorderWidth = 1.0;
    cell.contentMargin = 10;
    cell.textLabel.text = [NSString stringWithFormat:@"section%ld--index%ld",(long)indexPath.section,(long)indexPath.row];
    return cell;
}

@end

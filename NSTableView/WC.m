//
//  WC.m
//  NSTableView
//
//  Created by admin on 17/2/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "WC.h"

@interface WC ()

@end

@implementation WC

- (void)windowDidLoad {
    [super windowDidLoad];
    
    array = [[NSMutableArray alloc] init];
    TableDate *date = [TableDate new];
    date.name = @"John";
    date.iD = @"1";
    [array addObject:date];
    TableDate *date2 = [TableDate new];
    date2.name = @"May";
    date2.iD = @"2";
    [array addObject:date2];
    [self.tableview reloadData];
    
    
}
//返回表格的行数
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return array.count;
}
-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    //    return nil;
    TableDate *date = array[row];
    if ([tableColumn.identifier isEqualToString:@"name"]) {
        return date.name;
    } else {
        return date.iD;
    }
}
//- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
//    TableDate *date = [array objectAtIndex:row];
//    NSString *identifier = [tableColumn identifier];
//    if ([identifier isEqualToString:@"name"]) {
//        NSTextFieldCell *textcell = cell;
//        [textcell setTitle:date.name];
//    }else if ([identifier isEqualToString:@"id"]){
//        NSTextFieldCell *textcell = cell;
//        [textcell setTitle:date.iD];
//    }
//}

@end

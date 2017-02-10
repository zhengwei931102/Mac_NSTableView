//
//  WC.h
//  NSTableView
//
//  Created by admin on 17/2/8.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TableDate.h"
@interface WC : NSWindowController<NSTabViewDelegate,NSTableViewDataSource>
{
    NSMutableArray *array;
}
@property (weak) IBOutlet NSTableView *tableview;
@end

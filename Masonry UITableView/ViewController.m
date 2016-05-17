
#import "ViewController.h"
#import "MessageTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UITableView
    UITableView *messageTableView = [[UITableView alloc] initWithFrame:self.view.frame];
    messageTableView.translatesAutoresizingMaskIntoConstraints = NO;
    messageTableView.estimatedRowHeight = 44.0;
    [messageTableView registerClass:[MessageTableViewCell class] forCellReuseIdentifier:@"cell"];
    messageTableView.dataSource = self;
    messageTableView.delegate = self;
    [self.view addSubview:messageTableView];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[MessageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = @"Title";
    cell.detailTextLabel.text = @"Subtitle";
    
    // Make sure the constraints have been added to this cell, since it may have just been created from scratch
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

@end

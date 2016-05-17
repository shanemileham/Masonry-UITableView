
#import "ViewController.h"
#import "MessageTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int width = self.view.frame.size.width;
    int height = self.view.frame.size.height;
    
    // messageTableView
    UITableView *messageTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    messageTableView.translatesAutoresizingMaskIntoConstraints = NO;
    messageTableView.estimatedRowHeight = 44.0;
    messageTableView.allowsSelection = NO;
    [messageTableView registerClass:[MessageTableViewCell class] forCellReuseIdentifier:@"messageTableViewCell"];
    messageTableView.dataSource = self;
    messageTableView.delegate = self;
    [self.view addSubview:messageTableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messageTableViewCell"];
    
    if (cell == nil) {
        cell = [[MessageTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"messageTableViewCell"];
    }
    
    cell.textLabel.text = @"Title";
    cell.detailTextLabel.text = @"Subtitle";
    
    // Make sure the constraints have been added to this cell, since it may have just been created from scratch
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

@end

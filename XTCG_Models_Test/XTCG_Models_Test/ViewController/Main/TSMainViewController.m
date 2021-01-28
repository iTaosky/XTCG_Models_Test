//
//  TSMainViewController.m
//  XTCG_Models_Test
//
//  Created by Thomas on 2021/1/20.
//

#import "TSMainViewController.h"
#import "TSMainViewModel.h"

@interface TSMainViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *contentView;
/// vm
@property(nonatomic, readwrite, strong) TSMainViewModel *viewModel;
/// data
@property(nonatomic, readwrite, strong) NSMutableArray *dataSource;

@end

@implementation TSMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    [self loadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)setUI {
    self.contentView.delegate = self;
    self.contentView.dataSource = self;
}

- (void)loadData {
    self.dataSource = [[NSMutableArray alloc] initWithArray:@[@"注册",@"验证",@"加密",@"re",@"re",@"re"]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell) cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    [cell.textLabel setText:self.dataSource[indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [[UIView alloc] initWithFrame:CGRectZero];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import "ViewController.h"
#import "IGListKit.h"
#import "Masonry.h"
#import "DemoModel.h"
#import "DemoSectionController.h"
@interface ViewController ()<IGListAdapterDataSource>
{
    IGListAdapter*_adapter;
}
@property(nonatomic,strong)UICollectionView * collectionView;
@property(nonatomic,strong)NSMutableArray * dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    self.collectionView=[[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
    self.collectionView.backgroundColor=[UIColor whiteColor];
    IGListAdapterUpdater*updater=[[IGListAdapterUpdater alloc]init];
    
    _adapter=[[IGListAdapter alloc]initWithUpdater:updater viewController:self workingRangeSize:0];
    
    _adapter.collectionView=self.collectionView;
    
    _adapter.dataSource=self;
    
    [self.view addSubview:self.collectionView];
    
    for (int i=0; i<10; i++) {
        DemoModel *model=[[DemoModel alloc]init];
        model.title=[NSString stringWithFormat:@"Section%ld",(long)i];
        [self.dataArray addObject:model];
    }
    //刷新数据
    [_adapter reloadDataWithCompletion:^(BOOL finished) {
        
    }];
    
   
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSMutableArray*)dataArray{
    if (_dataArray==nil) {
        _dataArray=@[].mutableCopy;
    }
    return _dataArray;
}
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
}

- (nullable UIView *)emptyViewForListAdapter:(nonnull IGListAdapter *)listAdapter {
 //没有数据时候的View
    UILabel *label=[UILabel new];
    label.text=@"没有数据";
    label.textAlignment=NSTextAlignmentCenter;
    return label;
}

- (nonnull IGListSectionController *)listAdapter:(nonnull IGListAdapter *)listAdapter sectionControllerForObject:(nonnull id)object {
    
    DemoSectionController *section=[[DemoSectionController alloc]init];
   
    return section;
    
}

- (nonnull NSArray<id<IGListDiffable>> *)objectsForListAdapter:(nonnull IGListAdapter *)listAdapter {
    //数据源
    return  self.dataArray;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

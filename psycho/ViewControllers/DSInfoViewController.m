//
//  DSInfoViewController.m
//  psycho
//
//  Created by Lena on 26.02.15.
//  Copyright (c) 2015 bestappstudio. All rights reserved.
//

#import "DSInfoViewController.h"
#import "DSInfoTableViewCell.h"

@interface DSInfoViewController ()

@end

@implementation DSInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
         self.buttonBack.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)backAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
   return 5 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DSInfoTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[DSInfoTableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    switch (indexPath.row) {
        case 0:
            cell.imageApp.image =  [UIImage imageNamed:@"ic_diet_dukan.png"];
            cell.appLabel.text = [NSString stringWithFormat:@"Диета Дюкана + Более 500 рецептов!"];
            break;
        case 1:
            cell.imageApp.image = [UIImage imageNamed:@"ic_schedule.png"];
            cell.appLabel.text = [NSString stringWithFormat:@"Умное Расписание ЖД"];
            break;
        case 2:
            cell.imageApp.image = [UIImage imageNamed:@"ic_seven.png"];
            cell.appLabel.text = [NSString stringWithFormat:@"Дюкан Экспресс - Похудей за 7 Дней!"];
            break;
        case 3:
            cell.imageApp.image = [UIImage imageNamed:@"ic_football.png"];
            cell.appLabel.text = [NSString stringWithFormat:@"Весь Футбол"];
            break;
        case 4:
            cell.imageApp.image =  [UIImage imageNamed:@"ic_directory.png"];
            cell.appLabel.text = [NSString stringWithFormat:@"Справочник Лекарственных Средств"];
            break;
          
    }

    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 65;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString* link ;
    
    switch (indexPath.row) {
        case 0:
            link = [NSString stringWithFormat:@"https://itunes.apple.com/ru/app/dieta-dukana-+-bolee-500-receptov!/id813912029?mt=8"];
            break;
        case 1:
            link = [NSString stringWithFormat:@"https://itunes.apple.com/ru/app/umnoe-raspisanie-zd/id849806022?mt=8"];
            break;
        case 2:
            link = [NSString stringWithFormat:@"https://itunes.apple.com/ru/app/dukan-ekspress-pohudej-za/id882601416?mt=8"];
            break;
        case 3:
            link = [NSString stringWithFormat:@"https://itunes.apple.com/ru/app/ves-futbol/id768137478?mt=8"];
            break;
        case 4:
            link = [NSString stringWithFormat:@"https://itunes.apple.com/ru/app/spravocnik-lekarstvennyh-sredstv/id789721612?mt=8"] ;
            break;
        
    }
    
    if([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:link]]){
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:link]];
    }
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

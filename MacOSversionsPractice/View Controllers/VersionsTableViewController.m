//
//  VersionsTableViewController.m
//  MacOSversionsPractice
//
//  Created by Dongwoo Pae on 11/1/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "VersionsTableViewController.h"
#import "VersionController.h"
#import "DWPMacOSVersion.h"

@interface VersionsTableViewController () //private interface

@property VersionController *versionController;

@end

@implementation VersionsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //versionController = VersionController()
    //create a versioncontroller - using  _ will access versionController
    _versionController = [[VersionController alloc] init];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _versionController.version.count
    return [[_versionController versions] count]; //unmodernized way (old way)
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VersionCell" forIndexPath:indexPath];
    
//    [[cell textLabel] text];
//    [[cell textLabel] setText:[NSString stringWithFormat:@"This is cell #%li", [indexPath row]]];
   
    //DWPMacOSVersion *version = _versionController.versions[indexPath.row];
    DWPMacOSVersion *version = [[_versionController versions] objectAtIndex:[indexPath row]]; //unmodernized way (old way)
    //cell.textLabel.text = version.codename;
    [[cell textLabel] setText:[version codename]]; //unmodernized way (old way)
    //cell.detailTextLabel.text = version.releaseDate;
    [[cell detailTextLabel] setText:[version releaseDate]]; //unmodernized way (old way)
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

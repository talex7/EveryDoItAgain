//
//  AddToDoViewController.m
//  EveryDoItAgain
//
//  Created by Thomas Alexanian on 2016-11-23.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "AddToDoViewController.h"
#import "AppDelegate.h"
#import "ToDo+CoreDataClass.h"

@interface AddToDoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *descTextField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;


@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTappedCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onTappedSave:(id)sender {
    NSString *inputTitle = self.titleTextField.text;
    NSString *inputDesc = self.descTextField.text;
    
    NSManagedObjectContext *context = ((AppDelegate*)UIApplication.sharedApplication.delegate).persistentContainer.viewContext;
    
    ToDo *newToDo = [[ToDo alloc] initWithContext:context];
    
    // If appropriate, configure the new managed object.
    newToDo.timestamp = [NSDate date];
    newToDo.title = inputTitle;
    newToDo.detailedDesc = inputDesc;
    
    // Save the context.
    NSError *error = nil;
    BOOL success = [context save:&error];
    if (success == NO) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
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

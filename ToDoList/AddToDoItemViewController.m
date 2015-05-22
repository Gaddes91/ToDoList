//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Matthew Gaddes on 21/05/2015.
//  Copyright (c) 2015 Matthew Gaddes. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()

// XCode has added this through ctrl-click. This stores a pointer to the text field and configures the storyboard to set up that connection
@property (weak, nonatomic) IBOutlet UITextField *textField;

// Same as above, but this identifies the Save button
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // If the Save button wasn’t tapped, instead of saving the item, the method should return without doing anything else
    if (sender != self.saveButton) return;
    
    // Check whether the user entered any text in the text field
    if (self.textField.text.length > 0) {
        
        // If there’s text, create a new item and give it the name of the text in the text field. Also, ensure that the completed state is set to NOfalse
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
        
        // If there isn’t text, we don’t want to save the item, so no further code is required
    }
}


@end

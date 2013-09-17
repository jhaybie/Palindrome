//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 4/28/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    int result;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showIsPalindrone
{
    resultLabel.text = @"IS a palindrone!";
}

-(void)showIsNotPalindrone
{
    resultLabel.text = @"IS NOT a palindrone!";
}


-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}


-(void)showResult
{
    resultLabel.text = [NSString stringWithFormat:@"%i", result];
}


-(void)checkForPalindrome
{
    const char* arrayOfCharacters = [self getCharacterArray];
    BOOL isPalindrome = YES;
    
    
    // Insert code in here to check the characters of the array for palindronishness
    
    //intial forward and backward values are declared as 0 and strlen - 1 so that we have pointers to the beginning and end of the array
    
    int forward = 0;
    int backward = strlen(arrayOfCharacters) - 1;
    
    
    while (forward < backward)
    {
        //checking for white space for both forward and backward, incrementing forward and decrementing backward as needed
        if (arrayOfCharacters[forward] == ' ')
        {
            forward++;
        }
        if (arrayOfCharacters[backward] == ' ')
        {
            backward--;
        }
        
        // checking if forward and backward chars are the same, otherwise exit loop and set isPalindrome value to NO
        
        if (arrayOfCharacters[forward] != arrayOfCharacters[backward])
        {
            isPalindrome=NO;
            break;
        }
        else //ensures our counters are increased and decreased as needed
        {
            forward++;
            backward--;
        }
    }
    
    if (isPalindrome) {
        [self showIsPalindrone];
    }
    else{
        [self showIsNotPalindrone];
    }    
}


-(void)sumIntegers
{
    const char* arrayOfCharacters = [self getCharacterArray];
    
    // parse out the commas, sum up the integers and assign the answer to the variable result
    // i.e.
    // result =
    
    [self showResult];
}

- (IBAction)check:(id)sender
{
    [self checkForPalindrome];
    
    // Uncomment the following line of code and comment out the previous line of code to run summation
    //[self sumIntegers];
}
@end

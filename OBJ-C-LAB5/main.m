//
//  main.m
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        while (1) {
            NSString *command = [inputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nfind - Find contacts\nhistory - Print the last 3 commands\nquit - Exit Application"];
            
            if ([command isEqualToString:@"quit"]) {
                NSLog(@"Goodbye!");
                break;
                
            } else if ([command isEqualToString:@"new"]) {
                NSString *name = [inputCollector inputForPrompt:@"Enter the contact's name:"];
                NSString *email = [inputCollector inputForPrompt:@"Enter the contact's email:"];
                Contact *newContact = [[Contact alloc] initWithName:name email:email];
                while (1) {
                    NSString *phoneLabel = [inputCollector inputForPrompt:@"Enter phone label (e.g., Mobile): (Type 'done' to finish)"];
                    if ([phoneLabel isEqualToString:@"done"]) {
                        break;
                    }
                    NSString *phoneNumber = [inputCollector inputForPrompt:@"Enter phone number:"];
                    [newContact addPhoneNumber:phoneNumber withLabel:phoneLabel];
                }
                [contactList addContact:newContact];
                
            } else if ([command isEqualToString:@"list"]) {
                [contactList listContacts];
                NSString *viewCommand = [inputCollector inputForPrompt:@"Enter the sequence number to view contact details (or type 'back' to return to the main menu):"];
                if (![viewCommand isEqualToString:@"back"]) {
                    NSInteger index = [viewCommand integerValue];
                    if (index >= 0 && index < contactList.contacts.count) {
                        [contactList.contacts[index] displayContactDetails];
                    } else {
                        NSLog(@"Invalid sequence number. Please try again.");
                    }
                }
                
            } else if ([command isEqualToString:@"find"]) {
                NSString *searchTerm = [inputCollector inputForPrompt:@"Enter search term:"];
                [contactList findContacts:searchTerm];
                
            } else if ([command isEqualToString:@"history"]) {
                [inputCollector displayCommandHistory];
                
            } else {
                NSLog(@"Invalid command. Please try again.");
            }
        }
    }
    return 0;
}

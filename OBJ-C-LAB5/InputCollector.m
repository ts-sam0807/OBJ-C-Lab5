//
//  InputCollector.m
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init {
    self = [super init];
    if (self) {
        _commandHistory = [NSMutableArray new];
    }
    return self;
}

- (NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    char input[255];
    fgets(input, 255, stdin);
    NSString *inputString = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    [self.commandHistory addObject:inputString];
    return inputString;
}

- (void)displayCommandHistory {
    NSLog(@"Command History:");
    NSInteger historyCount = self.commandHistory.count;
    for (NSInteger i = MAX(0, historyCount - 3); i < historyCount; i++) {
        NSLog(@"%ld: %@", (long)i, self.commandHistory[i]);
    }
}

@end

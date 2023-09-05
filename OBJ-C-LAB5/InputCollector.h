//
//  InputCollector.h
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

@property NSMutableArray<NSString *> *commandHistory;

- (NSString *)inputForPrompt:(NSString *)promptString;
- (void)displayCommandHistory;

@end

NS_ASSUME_NONNULL_END

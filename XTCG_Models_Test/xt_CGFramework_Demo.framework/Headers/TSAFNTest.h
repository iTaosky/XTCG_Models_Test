//
//  TSAFNTest.h
//  xt_CGFramework_Demo
//
//  Created by Thomas on 2021/1/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSAFNTest : NSObject

+ (void)monitorNetworking:(void(^)(bool has))callBack;

@end

NS_ASSUME_NONNULL_END

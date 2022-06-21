//
//  ObjectCreator.m
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

#import <Foundation/Foundation.h>
#import "ObjectCreator.h"

@implementation ObjectCreator
    
+ (Class)create:(NSString *)className
{
    Class daClass = NSClassFromString(className);
    return [daClass new];
}

@end

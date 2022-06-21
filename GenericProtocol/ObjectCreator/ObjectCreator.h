//
//  ObjectCreator.h
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

#ifndef ObjectCreator_h
#define ObjectCreator_h

#import <Foundation/Foundation.h>

@interface ObjectCreator : NSObject

+ (id)create:(NSString *)className;
    
@end

#endif /* ObjectCreator_h */

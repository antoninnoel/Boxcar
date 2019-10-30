//
//  BXCUtilities.m
//  Boxcar
//
//  Created by Antonin on 30/10/2019.
//  Copyright © 2019 PetitBamBou. All rights reserved.
//

#import "BXCUtilities.h"

@implementation BXCUtilities

+ (NSString *)formatedBytesFromDatas:(NSData *)datas {
    NSUInteger length = datas.length;
    if (length == 0) {
        return nil;
    }
    const unsigned char *buffer = datas.bytes;
    NSMutableString *hexString  = [NSMutableString stringWithCapacity:(length * 2)];
    for (int i = 0; i < length; ++i) {
        [hexString appendFormat:@"%02x", buffer[i]];
    }
    return [hexString copy];
}

@end

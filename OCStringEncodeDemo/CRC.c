//
//  CRC.c
//  OCStringEncodeDemo
//
//  Created by perfay on 2018/8/17.
//  Copyright © 2018年 luck. All rights reserved.
//

#include "CRC.h"
#import <Foundation/Foundation.h>
NSString* NEDecodeOcString(char str[],size_t lenght){
    unsigned char result[lenght];
    memcpy(result, str, lenght);
    unsigned char *p = result;
    for(int i= 0; i < lenght ;i++){
        (*p) ^=  0xBB;
        p++;
    }
    NSString *content = [[NSString stringWithFormat:@"%s",result] substringToIndex:lenght];
    return content;
}

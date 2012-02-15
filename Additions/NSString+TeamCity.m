//
//  NSString+TeamCity.m
//  GHUnitIOS
//
//  Created by Schulze, Felix on 11/15/11.
//  Copyright (c) 2011 Immobilienscout24. All rights reserved.
//

#import "NSString+TeamCity.h"

@implementation NSString (TeamCity)

-(NSString *) escapedForTeamCity {
    NSString *string = self;
    string = [string stringByReplacingOccurrencesOfString:@"|" withString:@"||"];
    string = [string stringByReplacingOccurrencesOfString:@"'" withString:@"|'"];
    string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@"|n"];
    string = [string stringByReplacingOccurrencesOfString:@"\r" withString:@"|r"];
    string = [string stringByReplacingOccurrencesOfString:@"[" withString:@"|["];
    string = [string stringByReplacingOccurrencesOfString:@"]" withString:@"|]"];
    self = string;
    return self;
}

@end

//
//  DWPMacOSVersion.m
//  MacOSversionsPractice
//
//  Created by Dongwoo Pae on 11/1/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "DWPMacOSVersion.h"

@implementation DWPMacOSVersion

//this is kind of convenience initializer so we dont have to initialize [MacOSVersion alloc] initWithCodeName everytime you call initializer below -> it actually does not need this but good to have so we type less(?)
+ (instancetype)versionWithCodeName:(NSString *)codename
                     releaseDate:(NSString *)releaseDate
{
    return [[self alloc] initWithCodeName:codename releaseDate:releaseDate]; //return regular initializer
}

- (instancetype)initWithCodeName:(NSString *)codename
                 releaseDate:(NSString *)releaseDate
{
    self = [super init];
    if (self) {
        _codename = codename;
        _releaseDate = releaseDate;
    }
    return self;
}

@end

//
//  DWPMacOSVersion.h
//  MacOSversionsPractice
//
//  Created by Dongwoo Pae on 11/1/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWPMacOSVersion : NSObject

+ (instancetype)versionWithCodeName:(NSString *)codename
                     releaseDate:(NSString *)releaseDate;

-(instancetype)initWithCodeName:(NSString *)codename
                releaseDate:(NSString *)releaseDate; //we need semi colon here because this is for public for header without curly braces
//there are all reference type
@property NSString *codename;
@property NSString *releaseDate;

@end


//
//  VersionController.m
//  MacOSversionsPractice
//
//  Created by Dongwoo Pae on 11/1/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "VersionController.h"
#import "DWPMacOSVersion.h"

@implementation VersionController

//initializing VersionController.h's versions
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //unmodernized way (old way) with "convenience" initializer so we dont need to type [DWPMacOSVersion alloc]
        
         _versions = [[NSArray alloc] initWithObjects:
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         nil
         ];
         
        
        //unmodernized way with regular initializer - initWithCodeName instead of using "convenience" initializer
        /*
         _versions = [[NSArray alloc] initWithObjects:
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Cheetah" releaseDate:@"March 24, 2001"],
         nil
         ];
         */
        
        
        
        //modernized way with "convenience" initializer
        /*
         _versions = @[
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"cheetah" releaseDate:@"March 24, 2001"],
         [DWPMacOSVersion versionWithCodeName:@"Lion" releaseDate:@"March 35, 2005"],
         ];
         */
        
        //modernized way without "convenience" initializer
        /*
         _versions = [[NSArray alloc] initWithObjects:
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         [[DWPMacOSVersion alloc] initWithCodeName:@"Lion" releaseDate:@"March 26, 2003"],
         nil];
         
         */
        //manually done
        //        DWPMacOSVersion *version1 = [[DWPMacOSVersion alloc] init];
        //        version1.codename = @"cheeta";
        //        version1.releaseDate = @"March 24, 2001";
        //        _versions = @[version1];
        
    }
    return self;
}

@end

//
//  VersionController.h
//  MacOSversionsPractice
//
//  Created by Dongwoo Pae on 11/1/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DWPMacOSVersion.h"

//differece between these two - either importing header or @class DWPMacOSVersion
//@class DWPMacOSVersion

NS_ASSUME_NONNULL_BEGIN

@interface VersionController : NSObject

@property (readonly) NSArray<DWPMacOSVersion *> *versions;   //private set

@end

NS_ASSUME_NONNULL_END

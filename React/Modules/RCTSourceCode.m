/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTSourceCode.h"

#import "RCTDefines.h"
#import "RCTAssert.h"
#import "RCTBridge.h"
#import "RCTUtils.h"

@implementation RCTSourceCode

RCT_EXPORT_MODULE()

@synthesize bridge = _bridge;

- (NSDictionary<NSString *, id> *)constantsToExport
{
  NSString *URL = self.bridge.bundleURL.absoluteString ?: @"";
  return @{@"scriptURL": URL};
}

@end

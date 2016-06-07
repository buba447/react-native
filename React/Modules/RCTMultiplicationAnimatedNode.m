/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTMultiplicationAnimatedNode.h"

@implementation RCTMultiplicationAnimatedNode

- (void)performUpdate {
  [super performUpdate];
  
  NSArray *inputNodes = self.config[@"input"];
  if (inputNodes.count > 1) {
    RCTValueAnimatedNode *parent1 = (RCTValueAnimatedNode *)self.parentNodes[inputNodes[0]];
    RCTValueAnimatedNode *parent2 = (RCTValueAnimatedNode *)self.parentNodes[inputNodes[1]];
    if (!parent1 || !parent2) {
      return;
    }
    self.value = parent1.value * parent2.value;
  }
}

@end

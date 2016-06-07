/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTAnimatedNode.h"
@class RCTViewPropertyMapper;
@class RCTNativeAnimatedModule;

@interface RCTPropsAnimatedNode : RCTAnimatedNode

@property (nonatomic, readonly) RCTViewPropertyMapper *propertyMapper;

- (void)connectToView:(NSNumber *)viewTag animatedModule:(RCTNativeAnimatedModule *)animationModule;
- (void)disconnectFromView:(NSNumber *)viewTag;

- (void)performViewUpdatesIfNecessary;

@end

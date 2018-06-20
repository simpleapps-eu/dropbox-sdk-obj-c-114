///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListTeamDevicesError.h"

#pragma mark - API Object

@implementation DBTEAMListTeamDevicesError

#pragma mark - Constructors

- (instancetype)initWithReset {
  self = [super init];
  if (self) {
    _tag = DBTEAMListTeamDevicesErrorReset;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMListTeamDevicesErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isReset {
  return _tag == DBTEAMListTeamDevicesErrorReset;
}

- (BOOL)isOther {
  return _tag == DBTEAMListTeamDevicesErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMListTeamDevicesErrorReset:
    return @"DBTEAMListTeamDevicesErrorReset";
  case DBTEAMListTeamDevicesErrorOther:
    return @"DBTEAMListTeamDevicesErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMListTeamDevicesErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMListTeamDevicesErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMListTeamDevicesErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMListTeamDevicesErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMListTeamDevicesError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isReset]) {
    jsonDict[@".tag"] = @"reset";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMListTeamDevicesError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"reset"]) {
    return [[DBTEAMListTeamDevicesError alloc] initWithReset];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMListTeamDevicesError alloc] initWithOther];
  }

  return [[DBTEAMListTeamDevicesError alloc] initWithOther];
}

@end

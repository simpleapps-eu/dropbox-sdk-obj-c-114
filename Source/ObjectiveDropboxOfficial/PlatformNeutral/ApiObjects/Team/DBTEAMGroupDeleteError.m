///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupDeleteError.h"
#import "DBTEAMGroupSelectorError.h"

#pragma mark - API Object

@implementation DBTEAMGroupDeleteError

#pragma mark - Constructors

- (instancetype)initWithGroupNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupDeleteErrorGroupNotFound;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupDeleteErrorOther;
  }
  return self;
}

- (instancetype)initWithGroupAlreadyDeleted {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupDeleteErrorGroupAlreadyDeleted;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isGroupNotFound {
  return _tag == DBTEAMGroupDeleteErrorGroupNotFound;
}

- (BOOL)isOther {
  return _tag == DBTEAMGroupDeleteErrorOther;
}

- (BOOL)isGroupAlreadyDeleted {
  return _tag == DBTEAMGroupDeleteErrorGroupAlreadyDeleted;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMGroupDeleteErrorGroupNotFound:
    return @"DBTEAMGroupDeleteErrorGroupNotFound";
  case DBTEAMGroupDeleteErrorOther:
    return @"DBTEAMGroupDeleteErrorOther";
  case DBTEAMGroupDeleteErrorGroupAlreadyDeleted:
    return @"DBTEAMGroupDeleteErrorGroupAlreadyDeleted";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupDeleteErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupDeleteErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupDeleteErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupDeleteErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupDeleteError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isGroupNotFound]) {
    jsonDict[@".tag"] = @"group_not_found";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isGroupAlreadyDeleted]) {
    jsonDict[@".tag"] = @"group_already_deleted";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMGroupDeleteError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"group_not_found"]) {
    return [[DBTEAMGroupDeleteError alloc] initWithGroupNotFound];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMGroupDeleteError alloc] initWithOther];
  } else if ([tag isEqualToString:@"group_already_deleted"]) {
    return [[DBTEAMGroupDeleteError alloc] initWithGroupAlreadyDeleted];
  }

  return [[DBTEAMGroupDeleteError alloc] initWithOther];
}

@end

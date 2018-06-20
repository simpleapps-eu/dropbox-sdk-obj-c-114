///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupMembersSelectorError.h"
#import "DBTEAMGroupSelectorError.h"

#pragma mark - API Object

@implementation DBTEAMGroupMembersSelectorError

#pragma mark - Constructors

- (instancetype)initWithGroupNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersSelectorErrorGroupNotFound;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersSelectorErrorOther;
  }
  return self;
}

- (instancetype)initWithMemberNotInGroup {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupMembersSelectorErrorMemberNotInGroup;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isGroupNotFound {
  return _tag == DBTEAMGroupMembersSelectorErrorGroupNotFound;
}

- (BOOL)isOther {
  return _tag == DBTEAMGroupMembersSelectorErrorOther;
}

- (BOOL)isMemberNotInGroup {
  return _tag == DBTEAMGroupMembersSelectorErrorMemberNotInGroup;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMGroupMembersSelectorErrorGroupNotFound:
    return @"DBTEAMGroupMembersSelectorErrorGroupNotFound";
  case DBTEAMGroupMembersSelectorErrorOther:
    return @"DBTEAMGroupMembersSelectorErrorOther";
  case DBTEAMGroupMembersSelectorErrorMemberNotInGroup:
    return @"DBTEAMGroupMembersSelectorErrorMemberNotInGroup";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupMembersSelectorErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupMembersSelectorErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupMembersSelectorErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupMembersSelectorErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupMembersSelectorError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isGroupNotFound]) {
    jsonDict[@".tag"] = @"group_not_found";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isMemberNotInGroup]) {
    jsonDict[@".tag"] = @"member_not_in_group";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMGroupMembersSelectorError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"group_not_found"]) {
    return [[DBTEAMGroupMembersSelectorError alloc] initWithGroupNotFound];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMGroupMembersSelectorError alloc] initWithOther];
  } else if ([tag isEqualToString:@"member_not_in_group"]) {
    return [[DBTEAMGroupMembersSelectorError alloc] initWithMemberNotInGroup];
  }

  return [[DBTEAMGroupMembersSelectorError alloc] initWithOther];
}

@end

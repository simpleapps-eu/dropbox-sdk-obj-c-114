///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMGroupSelectorError.h"
#import "DBTEAMGroupUpdateError.h"

#pragma mark - API Object

@implementation DBTEAMGroupUpdateError

#pragma mark - Constructors

- (instancetype)initWithGroupNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorGroupNotFound;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorOther;
  }
  return self;
}

- (instancetype)initWithExternalIdAlreadyInUse {
  self = [super init];
  if (self) {
    _tag = DBTEAMGroupUpdateErrorExternalIdAlreadyInUse;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isGroupNotFound {
  return _tag == DBTEAMGroupUpdateErrorGroupNotFound;
}

- (BOOL)isOther {
  return _tag == DBTEAMGroupUpdateErrorOther;
}

- (BOOL)isExternalIdAlreadyInUse {
  return _tag == DBTEAMGroupUpdateErrorExternalIdAlreadyInUse;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMGroupUpdateErrorGroupNotFound:
    return @"DBTEAMGroupUpdateErrorGroupNotFound";
  case DBTEAMGroupUpdateErrorOther:
    return @"DBTEAMGroupUpdateErrorOther";
  case DBTEAMGroupUpdateErrorExternalIdAlreadyInUse:
    return @"DBTEAMGroupUpdateErrorExternalIdAlreadyInUse";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGroupUpdateErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGroupUpdateErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGroupUpdateErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGroupUpdateErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMGroupUpdateError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isGroupNotFound]) {
    jsonDict[@".tag"] = @"group_not_found";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isExternalIdAlreadyInUse]) {
    jsonDict[@".tag"] = @"external_id_already_in_use";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMGroupUpdateError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"group_not_found"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithGroupNotFound];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithOther];
  } else if ([tag isEqualToString:@"external_id_already_in_use"]) {
    return [[DBTEAMGroupUpdateError alloc] initWithExternalIdAlreadyInUse];
  }

  return [[DBTEAMGroupUpdateError alloc] initWithOther];
}

@end

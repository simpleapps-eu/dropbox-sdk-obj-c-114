///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMembersListContinueError.h"

#pragma mark - API Object

@implementation DBTEAMMembersListContinueError

#pragma mark - Constructors

- (instancetype)initWithInvalidCursor {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersListContinueErrorInvalidCursor;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersListContinueErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isInvalidCursor {
  return _tag == DBTEAMMembersListContinueErrorInvalidCursor;
}

- (BOOL)isOther {
  return _tag == DBTEAMMembersListContinueErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMMembersListContinueErrorInvalidCursor:
    return @"DBTEAMMembersListContinueErrorInvalidCursor";
  case DBTEAMMembersListContinueErrorOther:
    return @"DBTEAMMembersListContinueErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersListContinueErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersListContinueErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersListContinueErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersListContinueErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersListContinueError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isInvalidCursor]) {
    jsonDict[@".tag"] = @"invalid_cursor";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMMembersListContinueError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"invalid_cursor"]) {
    return [[DBTEAMMembersListContinueError alloc] initWithInvalidCursor];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMMembersListContinueError alloc] initWithOther];
  }

  return [[DBTEAMMembersListContinueError alloc] initWithOther];
}

@end

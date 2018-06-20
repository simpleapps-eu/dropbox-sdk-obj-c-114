///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListFolderMembersContinueError.h"
#import "DBSHARINGSharedFolderAccessError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListFolderMembersContinueError

@synthesize accessError = _accessError;

#pragma mark - Constructors

- (instancetype)initWithAccessError:(DBSHARINGSharedFolderAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFolderMembersContinueErrorAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithInvalidCursor {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFolderMembersContinueErrorInvalidCursor;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFolderMembersContinueErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFolderAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGListFolderMembersContinueErrorAccessError, but was %@.",
                       [self tagName]];
  }
  return _accessError;
}

#pragma mark - Tag state methods

- (BOOL)isAccessError {
  return _tag == DBSHARINGListFolderMembersContinueErrorAccessError;
}

- (BOOL)isInvalidCursor {
  return _tag == DBSHARINGListFolderMembersContinueErrorInvalidCursor;
}

- (BOOL)isOther {
  return _tag == DBSHARINGListFolderMembersContinueErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGListFolderMembersContinueErrorAccessError:
    return @"DBSHARINGListFolderMembersContinueErrorAccessError";
  case DBSHARINGListFolderMembersContinueErrorInvalidCursor:
    return @"DBSHARINGListFolderMembersContinueErrorInvalidCursor";
  case DBSHARINGListFolderMembersContinueErrorOther:
    return @"DBSHARINGListFolderMembersContinueErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGListFolderMembersContinueErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGListFolderMembersContinueErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGListFolderMembersContinueErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGListFolderMembersContinueErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGListFolderMembersContinueError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] =
        [[DBSHARINGSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isInvalidCursor]) {
    jsonDict[@".tag"] = @"invalid_cursor";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBSHARINGListFolderMembersContinueError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"access_error"]) {
    DBSHARINGSharedFolderAccessError *accessError =
        [DBSHARINGSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBSHARINGListFolderMembersContinueError alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"invalid_cursor"]) {
    return [[DBSHARINGListFolderMembersContinueError alloc] initWithInvalidCursor];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGListFolderMembersContinueError alloc] initWithOther];
  }

  return [[DBSHARINGListFolderMembersContinueError alloc] initWithOther];
}

@end

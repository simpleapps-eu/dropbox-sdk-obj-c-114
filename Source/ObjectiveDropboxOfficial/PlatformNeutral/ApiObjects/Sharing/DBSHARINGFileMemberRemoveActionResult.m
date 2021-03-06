///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGFileMemberActionError.h"
#import "DBSHARINGFileMemberRemoveActionResult.h"
#import "DBSHARINGMemberAccessLevelResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGFileMemberRemoveActionResult

@synthesize success = _success;
@synthesize memberError = _memberError;

#pragma mark - Constructors

- (instancetype)initWithSuccess:(DBSHARINGMemberAccessLevelResult *)success {
  self = [super init];
  if (self) {
    _tag = DBSHARINGFileMemberRemoveActionResultSuccess;
    _success = success;
  }
  return self;
}

- (instancetype)initWithMemberError:(DBSHARINGFileMemberActionError *)memberError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGFileMemberRemoveActionResultMemberError;
    _memberError = memberError;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGFileMemberRemoveActionResultOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGMemberAccessLevelResult *)success {
  if (![self isSuccess]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGFileMemberRemoveActionResultSuccess, but was %@.", [self tagName]];
  }
  return _success;
}

- (DBSHARINGFileMemberActionError *)memberError {
  if (![self isMemberError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGFileMemberRemoveActionResultMemberError, but was %@.", [self tagName]];
  }
  return _memberError;
}

#pragma mark - Tag state methods

- (BOOL)isSuccess {
  return _tag == DBSHARINGFileMemberRemoveActionResultSuccess;
}

- (BOOL)isMemberError {
  return _tag == DBSHARINGFileMemberRemoveActionResultMemberError;
}

- (BOOL)isOther {
  return _tag == DBSHARINGFileMemberRemoveActionResultOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGFileMemberRemoveActionResultSuccess:
    return @"DBSHARINGFileMemberRemoveActionResultSuccess";
  case DBSHARINGFileMemberRemoveActionResultMemberError:
    return @"DBSHARINGFileMemberRemoveActionResultMemberError";
  case DBSHARINGFileMemberRemoveActionResultOther:
    return @"DBSHARINGFileMemberRemoveActionResultOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGFileMemberRemoveActionResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGFileMemberRemoveActionResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGFileMemberRemoveActionResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGFileMemberRemoveActionResultSerializer

+ (NSDictionary *)serialize:(DBSHARINGFileMemberRemoveActionResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isSuccess]) {
    jsonDict[@"success"] = [[DBSHARINGMemberAccessLevelResultSerializer serialize:valueObj.success] mutableCopy];
    jsonDict[@".tag"] = @"success";
  } else if ([valueObj isMemberError]) {
    jsonDict[@"member_error"] = [[DBSHARINGFileMemberActionErrorSerializer serialize:valueObj.memberError] mutableCopy];
    jsonDict[@".tag"] = @"member_error";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBSHARINGFileMemberRemoveActionResult *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"success"]) {
    DBSHARINGMemberAccessLevelResult *success = [DBSHARINGMemberAccessLevelResultSerializer deserialize:valueDict];
    return [[DBSHARINGFileMemberRemoveActionResult alloc] initWithSuccess:success];
  } else if ([tag isEqualToString:@"member_error"]) {
    DBSHARINGFileMemberActionError *memberError =
        [DBSHARINGFileMemberActionErrorSerializer deserialize:valueDict[@"member_error"]];
    return [[DBSHARINGFileMemberRemoveActionResult alloc] initWithMemberError:memberError];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGFileMemberRemoveActionResult alloc] initWithOther];
  }

  return [[DBSHARINGFileMemberRemoveActionResult alloc] initWithOther];
}

@end

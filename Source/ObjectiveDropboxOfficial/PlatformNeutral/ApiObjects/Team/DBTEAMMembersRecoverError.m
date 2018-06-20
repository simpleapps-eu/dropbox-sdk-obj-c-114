///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMembersRecoverError.h"
#import "DBTEAMUserSelectorError.h"

#pragma mark - API Object

@implementation DBTEAMMembersRecoverError

#pragma mark - Constructors

- (instancetype)initWithUserNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersRecoverErrorUserNotFound;
  }
  return self;
}

- (instancetype)initWithUserUnrecoverable {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersRecoverErrorUserUnrecoverable;
  }
  return self;
}

- (instancetype)initWithUserNotInTeam {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersRecoverErrorUserNotInTeam;
  }
  return self;
}

- (instancetype)initWithTeamLicenseLimit {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersRecoverErrorTeamLicenseLimit;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersRecoverErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isUserNotFound {
  return _tag == DBTEAMMembersRecoverErrorUserNotFound;
}

- (BOOL)isUserUnrecoverable {
  return _tag == DBTEAMMembersRecoverErrorUserUnrecoverable;
}

- (BOOL)isUserNotInTeam {
  return _tag == DBTEAMMembersRecoverErrorUserNotInTeam;
}

- (BOOL)isTeamLicenseLimit {
  return _tag == DBTEAMMembersRecoverErrorTeamLicenseLimit;
}

- (BOOL)isOther {
  return _tag == DBTEAMMembersRecoverErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMMembersRecoverErrorUserNotFound:
    return @"DBTEAMMembersRecoverErrorUserNotFound";
  case DBTEAMMembersRecoverErrorUserUnrecoverable:
    return @"DBTEAMMembersRecoverErrorUserUnrecoverable";
  case DBTEAMMembersRecoverErrorUserNotInTeam:
    return @"DBTEAMMembersRecoverErrorUserNotInTeam";
  case DBTEAMMembersRecoverErrorTeamLicenseLimit:
    return @"DBTEAMMembersRecoverErrorTeamLicenseLimit";
  case DBTEAMMembersRecoverErrorOther:
    return @"DBTEAMMembersRecoverErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersRecoverErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersRecoverErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersRecoverErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersRecoverErrorSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersRecoverError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isUserNotFound]) {
    jsonDict[@".tag"] = @"user_not_found";
  } else if ([valueObj isUserUnrecoverable]) {
    jsonDict[@".tag"] = @"user_unrecoverable";
  } else if ([valueObj isUserNotInTeam]) {
    jsonDict[@".tag"] = @"user_not_in_team";
  } else if ([valueObj isTeamLicenseLimit]) {
    jsonDict[@".tag"] = @"team_license_limit";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBTEAMMembersRecoverError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"user_not_found"]) {
    return [[DBTEAMMembersRecoverError alloc] initWithUserNotFound];
  } else if ([tag isEqualToString:@"user_unrecoverable"]) {
    return [[DBTEAMMembersRecoverError alloc] initWithUserUnrecoverable];
  } else if ([tag isEqualToString:@"user_not_in_team"]) {
    return [[DBTEAMMembersRecoverError alloc] initWithUserNotInTeam];
  } else if ([tag isEqualToString:@"team_license_limit"]) {
    return [[DBTEAMMembersRecoverError alloc] initWithTeamLicenseLimit];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBTEAMMembersRecoverError alloc] initWithOther];
  }

  return [[DBTEAMMembersRecoverError alloc] initWithOther];
}

@end

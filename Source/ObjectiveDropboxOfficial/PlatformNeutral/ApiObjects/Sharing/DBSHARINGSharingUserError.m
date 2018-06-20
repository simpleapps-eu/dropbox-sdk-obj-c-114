///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharingUserError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharingUserError

#pragma mark - Constructors

- (instancetype)initWithEmailUnverified {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingUserErrorEmailUnverified;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGSharingUserErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isEmailUnverified {
  return _tag == DBSHARINGSharingUserErrorEmailUnverified;
}

- (BOOL)isOther {
  return _tag == DBSHARINGSharingUserErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGSharingUserErrorEmailUnverified:
    return @"DBSHARINGSharingUserErrorEmailUnverified";
  case DBSHARINGSharingUserErrorOther:
    return @"DBSHARINGSharingUserErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGSharingUserErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGSharingUserErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGSharingUserErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGSharingUserErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGSharingUserError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isEmailUnverified]) {
    jsonDict[@".tag"] = @"email_unverified";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBSHARINGSharingUserError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"email_unverified"]) {
    return [[DBSHARINGSharingUserError alloc] initWithEmailUnverified];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGSharingUserError alloc] initWithOther];
  }

  return [[DBSHARINGSharingUserError alloc] initWithOther];
}

@end

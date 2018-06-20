///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGJobError.h"
#import "DBSHARINGRelinquishFolderMembershipError.h"
#import "DBSHARINGRemoveFolderMemberError.h"
#import "DBSHARINGUnshareFolderError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGJobError

@synthesize unshareFolderError = _unshareFolderError;
@synthesize removeFolderMemberError = _removeFolderMemberError;
@synthesize relinquishFolderMembershipError = _relinquishFolderMembershipError;

#pragma mark - Constructors

- (instancetype)initWithUnshareFolderError:(DBSHARINGUnshareFolderError *)unshareFolderError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGJobErrorUnshareFolderError;
    _unshareFolderError = unshareFolderError;
  }
  return self;
}

- (instancetype)initWithRemoveFolderMemberError:(DBSHARINGRemoveFolderMemberError *)removeFolderMemberError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGJobErrorRemoveFolderMemberError;
    _removeFolderMemberError = removeFolderMemberError;
  }
  return self;
}

- (instancetype)initWithRelinquishFolderMembershipError:
    (DBSHARINGRelinquishFolderMembershipError *)relinquishFolderMembershipError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGJobErrorRelinquishFolderMembershipError;
    _relinquishFolderMembershipError = relinquishFolderMembershipError;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGJobErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGUnshareFolderError *)unshareFolderError {
  if (![self isUnshareFolderError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGJobErrorUnshareFolderError, but was %@.", [self tagName]];
  }
  return _unshareFolderError;
}

- (DBSHARINGRemoveFolderMemberError *)removeFolderMemberError {
  if (![self isRemoveFolderMemberError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGJobErrorRemoveFolderMemberError, but was %@.", [self tagName]];
  }
  return _removeFolderMemberError;
}

- (DBSHARINGRelinquishFolderMembershipError *)relinquishFolderMembershipError {
  if (![self isRelinquishFolderMembershipError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGJobErrorRelinquishFolderMembershipError, but was %@.", [self tagName]];
  }
  return _relinquishFolderMembershipError;
}

#pragma mark - Tag state methods

- (BOOL)isUnshareFolderError {
  return _tag == DBSHARINGJobErrorUnshareFolderError;
}

- (BOOL)isRemoveFolderMemberError {
  return _tag == DBSHARINGJobErrorRemoveFolderMemberError;
}

- (BOOL)isRelinquishFolderMembershipError {
  return _tag == DBSHARINGJobErrorRelinquishFolderMembershipError;
}

- (BOOL)isOther {
  return _tag == DBSHARINGJobErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGJobErrorUnshareFolderError:
    return @"DBSHARINGJobErrorUnshareFolderError";
  case DBSHARINGJobErrorRemoveFolderMemberError:
    return @"DBSHARINGJobErrorRemoveFolderMemberError";
  case DBSHARINGJobErrorRelinquishFolderMembershipError:
    return @"DBSHARINGJobErrorRelinquishFolderMembershipError";
  case DBSHARINGJobErrorOther:
    return @"DBSHARINGJobErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGJobErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGJobErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGJobErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGJobErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGJobError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isUnshareFolderError]) {
    jsonDict[@"unshare_folder_error"] =
        [[DBSHARINGUnshareFolderErrorSerializer serialize:valueObj.unshareFolderError] mutableCopy];
    jsonDict[@".tag"] = @"unshare_folder_error";
  } else if ([valueObj isRemoveFolderMemberError]) {
    jsonDict[@"remove_folder_member_error"] =
        [[DBSHARINGRemoveFolderMemberErrorSerializer serialize:valueObj.removeFolderMemberError] mutableCopy];
    jsonDict[@".tag"] = @"remove_folder_member_error";
  } else if ([valueObj isRelinquishFolderMembershipError]) {
    jsonDict[@"relinquish_folder_membership_error"] = [[DBSHARINGRelinquishFolderMembershipErrorSerializer
        serialize:valueObj.relinquishFolderMembershipError] mutableCopy];
    jsonDict[@".tag"] = @"relinquish_folder_membership_error";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBSHARINGJobError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"unshare_folder_error"]) {
    DBSHARINGUnshareFolderError *unshareFolderError =
        [DBSHARINGUnshareFolderErrorSerializer deserialize:valueDict[@"unshare_folder_error"]];
    return [[DBSHARINGJobError alloc] initWithUnshareFolderError:unshareFolderError];
  } else if ([tag isEqualToString:@"remove_folder_member_error"]) {
    DBSHARINGRemoveFolderMemberError *removeFolderMemberError =
        [DBSHARINGRemoveFolderMemberErrorSerializer deserialize:valueDict[@"remove_folder_member_error"]];
    return [[DBSHARINGJobError alloc] initWithRemoveFolderMemberError:removeFolderMemberError];
  } else if ([tag isEqualToString:@"relinquish_folder_membership_error"]) {
    DBSHARINGRelinquishFolderMembershipError *relinquishFolderMembershipError =
        [DBSHARINGRelinquishFolderMembershipErrorSerializer
            deserialize:valueDict[@"relinquish_folder_membership_error"]];
    return [[DBSHARINGJobError alloc] initWithRelinquishFolderMembershipError:relinquishFolderMembershipError];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGJobError alloc] initWithOther];
  }

  return [[DBSHARINGJobError alloc] initWithOther];
}

@end

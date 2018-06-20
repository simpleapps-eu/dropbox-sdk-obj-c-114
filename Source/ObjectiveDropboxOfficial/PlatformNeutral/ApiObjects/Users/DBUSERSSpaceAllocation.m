///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSIndividualSpaceAllocation.h"
#import "DBUSERSSpaceAllocation.h"
#import "DBUSERSTeamSpaceAllocation.h"

#pragma mark - API Object

@implementation DBUSERSSpaceAllocation

@synthesize individual = _individual;
@synthesize team = _team;

#pragma mark - Constructors

- (instancetype)initWithIndividual:(DBUSERSIndividualSpaceAllocation *)individual {
  self = [super init];
  if (self) {
    _tag = DBUSERSSpaceAllocationIndividual;
    _individual = individual;
  }
  return self;
}

- (instancetype)initWithTeam:(DBUSERSTeamSpaceAllocation *)team {
  self = [super init];
  if (self) {
    _tag = DBUSERSSpaceAllocationTeam;
    _team = team;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBUSERSSpaceAllocationOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBUSERSIndividualSpaceAllocation *)individual {
  if (![self isIndividual]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBUSERSSpaceAllocationIndividual, but was %@.", [self tagName]];
  }
  return _individual;
}

- (DBUSERSTeamSpaceAllocation *)team {
  if (![self isTeam]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBUSERSSpaceAllocationTeam, but was %@.", [self tagName]];
  }
  return _team;
}

#pragma mark - Tag state methods

- (BOOL)isIndividual {
  return _tag == DBUSERSSpaceAllocationIndividual;
}

- (BOOL)isTeam {
  return _tag == DBUSERSSpaceAllocationTeam;
}

- (BOOL)isOther {
  return _tag == DBUSERSSpaceAllocationOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBUSERSSpaceAllocationIndividual:
    return @"DBUSERSSpaceAllocationIndividual";
  case DBUSERSSpaceAllocationTeam:
    return @"DBUSERSSpaceAllocationTeam";
  case DBUSERSSpaceAllocationOther:
    return @"DBUSERSSpaceAllocationOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBUSERSSpaceAllocationSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBUSERSSpaceAllocationSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBUSERSSpaceAllocationSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBUSERSSpaceAllocationSerializer

+ (NSDictionary *)serialize:(DBUSERSSpaceAllocation *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isIndividual]) {
    jsonDict[@"individual"] = [[DBUSERSIndividualSpaceAllocationSerializer serialize:valueObj.individual] mutableCopy];
    jsonDict[@".tag"] = @"individual";
  } else if ([valueObj isTeam]) {
    jsonDict[@"team"] = [[DBUSERSTeamSpaceAllocationSerializer serialize:valueObj.team] mutableCopy];
    jsonDict[@".tag"] = @"team";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBUSERSSpaceAllocation *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"individual"]) {
    DBUSERSIndividualSpaceAllocation *individual = [DBUSERSIndividualSpaceAllocationSerializer deserialize:valueDict];
    return [[DBUSERSSpaceAllocation alloc] initWithIndividual:individual];
  } else if ([tag isEqualToString:@"team"]) {
    DBUSERSTeamSpaceAllocation *team = [DBUSERSTeamSpaceAllocationSerializer deserialize:valueDict];
    return [[DBUSERSSpaceAllocation alloc] initWithTeam:team];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBUSERSSpaceAllocation alloc] initWithOther];
  }

  return [[DBUSERSSpaceAllocation alloc] initWithOther];
}

@end

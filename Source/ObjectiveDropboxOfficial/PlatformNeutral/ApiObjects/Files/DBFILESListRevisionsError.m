///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESListRevisionsError.h"
#import "DBFILESLookupError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESListRevisionsError

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESLookupError *)path {
  self = [super init];
  if (self) {
    _tag = DBFILESListRevisionsErrorPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESListRevisionsErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESLookupError *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESListRevisionsErrorPath, but was %@.", [self tagName]];
  }
  return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
  return _tag == DBFILESListRevisionsErrorPath;
}

- (BOOL)isOther {
  return _tag == DBFILESListRevisionsErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESListRevisionsErrorPath:
    return @"DBFILESListRevisionsErrorPath";
  case DBFILESListRevisionsErrorOther:
    return @"DBFILESListRevisionsErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESListRevisionsErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESListRevisionsErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESListRevisionsErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESListRevisionsErrorSerializer

+ (NSDictionary *)serialize:(DBFILESListRevisionsError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESLookupErrorSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBFILESListRevisionsError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path"]) {
    DBFILESLookupError *path = [DBFILESLookupErrorSerializer deserialize:valueDict[@"path"]];
    return [[DBFILESListRevisionsError alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESListRevisionsError alloc] initWithOther];
  }

  return [[DBFILESListRevisionsError alloc] initWithOther];
}

@end

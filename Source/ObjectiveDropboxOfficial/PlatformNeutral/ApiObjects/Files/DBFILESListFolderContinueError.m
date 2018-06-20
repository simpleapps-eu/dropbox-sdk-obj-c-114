///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESListFolderContinueError.h"
#import "DBFILESLookupError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESListFolderContinueError

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESLookupError *)path {
  self = [super init];
  if (self) {
    _tag = DBFILESListFolderContinueErrorPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithReset {
  self = [super init];
  if (self) {
    _tag = DBFILESListFolderContinueErrorReset;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESListFolderContinueErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESLookupError *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESListFolderContinueErrorPath, but was %@.", [self tagName]];
  }
  return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
  return _tag == DBFILESListFolderContinueErrorPath;
}

- (BOOL)isReset {
  return _tag == DBFILESListFolderContinueErrorReset;
}

- (BOOL)isOther {
  return _tag == DBFILESListFolderContinueErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESListFolderContinueErrorPath:
    return @"DBFILESListFolderContinueErrorPath";
  case DBFILESListFolderContinueErrorReset:
    return @"DBFILESListFolderContinueErrorReset";
  case DBFILESListFolderContinueErrorOther:
    return @"DBFILESListFolderContinueErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESListFolderContinueErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESListFolderContinueErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESListFolderContinueErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESListFolderContinueErrorSerializer

+ (NSDictionary *)serialize:(DBFILESListFolderContinueError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESLookupErrorSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isReset]) {
    jsonDict[@".tag"] = @"reset";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBFILESListFolderContinueError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path"]) {
    DBFILESLookupError *path = [DBFILESLookupErrorSerializer deserialize:valueDict[@"path"]];
    return [[DBFILESListFolderContinueError alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"reset"]) {
    return [[DBFILESListFolderContinueError alloc] initWithReset];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESListFolderContinueError alloc] initWithOther];
  }

  return [[DBFILESListFolderContinueError alloc] initWithOther];
}

@end

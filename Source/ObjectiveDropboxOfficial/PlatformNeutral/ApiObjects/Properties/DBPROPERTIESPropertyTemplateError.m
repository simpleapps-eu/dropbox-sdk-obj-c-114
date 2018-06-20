///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBPROPERTIESPropertyTemplateError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBPROPERTIESPropertyTemplateError

@synthesize templateNotFound = _templateNotFound;

#pragma mark - Constructors

- (instancetype)initWithTemplateNotFound:(NSString *)templateNotFound {
  self = [super init];
  if (self) {
    _tag = DBPROPERTIESPropertyTemplateErrorTemplateNotFound;
    _templateNotFound = templateNotFound;
  }
  return self;
}

- (instancetype)initWithRestrictedContent {
  self = [super init];
  if (self) {
    _tag = DBPROPERTIESPropertyTemplateErrorRestrictedContent;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBPROPERTIESPropertyTemplateErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)templateNotFound {
  if (![self isTemplateNotFound]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBPROPERTIESPropertyTemplateErrorTemplateNotFound, but was %@.", [self tagName]];
  }
  return _templateNotFound;
}

#pragma mark - Tag state methods

- (BOOL)isTemplateNotFound {
  return _tag == DBPROPERTIESPropertyTemplateErrorTemplateNotFound;
}

- (BOOL)isRestrictedContent {
  return _tag == DBPROPERTIESPropertyTemplateErrorRestrictedContent;
}

- (BOOL)isOther {
  return _tag == DBPROPERTIESPropertyTemplateErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBPROPERTIESPropertyTemplateErrorTemplateNotFound:
    return @"DBPROPERTIESPropertyTemplateErrorTemplateNotFound";
  case DBPROPERTIESPropertyTemplateErrorRestrictedContent:
    return @"DBPROPERTIESPropertyTemplateErrorRestrictedContent";
  case DBPROPERTIESPropertyTemplateErrorOther:
    return @"DBPROPERTIESPropertyTemplateErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBPROPERTIESPropertyTemplateErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBPROPERTIESPropertyTemplateErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBPROPERTIESPropertyTemplateErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBPROPERTIESPropertyTemplateErrorSerializer

+ (NSDictionary *)serialize:(DBPROPERTIESPropertyTemplateError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isTemplateNotFound]) {
    jsonDict[@"template_not_found"] = valueObj.templateNotFound;
    jsonDict[@".tag"] = @"template_not_found";
  } else if ([valueObj isRestrictedContent]) {
    jsonDict[@".tag"] = @"restricted_content";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    jsonDict[@".tag"] = @"other";
  }

  return jsonDict;
}

+ (DBPROPERTIESPropertyTemplateError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"template_not_found"]) {
    NSString *templateNotFound = valueDict[@"template_not_found"];
    return [[DBPROPERTIESPropertyTemplateError alloc] initWithTemplateNotFound:templateNotFound];
  } else if ([tag isEqualToString:@"restricted_content"]) {
    return [[DBPROPERTIESPropertyTemplateError alloc] initWithRestrictedContent];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBPROPERTIESPropertyTemplateError alloc] initWithOther];
  }

  return [[DBPROPERTIESPropertyTemplateError alloc] initWithOther];
}

@end

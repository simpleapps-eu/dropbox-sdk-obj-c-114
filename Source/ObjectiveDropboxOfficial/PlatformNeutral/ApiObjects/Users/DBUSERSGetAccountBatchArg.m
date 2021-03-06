///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBUSERSGetAccountBatchArg.h"

#pragma mark - API Object

@implementation DBUSERSGetAccountBatchArg

#pragma mark - Constructors

- (instancetype)initWithAccountIds:(NSArray<NSString *> *)accountIds {
  [DBStoneValidators arrayValidator:@(1) maxItems:nil
                      itemValidator:[DBStoneValidators stringValidator:@(40) maxLength:@(40) pattern:nil]](accountIds);

  self = [super init];
  if (self) {
    _accountIds = accountIds;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBUSERSGetAccountBatchArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBUSERSGetAccountBatchArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBUSERSGetAccountBatchArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBUSERSGetAccountBatchArgSerializer

+ (NSDictionary *)serialize:(DBUSERSGetAccountBatchArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"account_ids"] = [DBArraySerializer serialize:valueObj.accountIds
                                                withBlock:^id(id elem) {
                                                  return elem;
                                                }];

  return jsonDict;
}

+ (DBUSERSGetAccountBatchArg *)deserialize:(NSDictionary *)valueDict {
  NSArray<NSString *> *accountIds = [DBArraySerializer deserialize:valueDict[@"account_ids"]
                                                         withBlock:^id(id elem) {
                                                           return elem;
                                                         }];

  return [[DBUSERSGetAccountBatchArg alloc] initWithAccountIds:accountIds];
}

@end

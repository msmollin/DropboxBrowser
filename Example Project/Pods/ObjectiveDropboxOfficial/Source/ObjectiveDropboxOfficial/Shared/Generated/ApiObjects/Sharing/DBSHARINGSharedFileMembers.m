///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGroupMembershipInfo.h"
#import "DBSHARINGInviteeMembershipInfo.h"
#import "DBSHARINGSharedFileMembers.h"
#import "DBSHARINGUserMembershipInfo.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGSharedFileMembers

#pragma mark - Constructors

- (instancetype)initWithUsers:(NSArray<DBSHARINGUserMembershipInfo *> *)users
                       groups:(NSArray<DBSHARINGGroupMembershipInfo *> *)groups
                     invitees:(NSArray<DBSHARINGInviteeMembershipInfo *> *)invitees
                       cursor:(NSString *)cursor {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](users);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](groups);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](invitees);

  self = [super init];
  if (self) {
    _users = users;
    _groups = groups;
    _invitees = invitees;
    _cursor = cursor;
  }
  return self;
}

- (instancetype)initWithUsers:(NSArray<DBSHARINGUserMembershipInfo *> *)users
                       groups:(NSArray<DBSHARINGGroupMembershipInfo *> *)groups
                     invitees:(NSArray<DBSHARINGInviteeMembershipInfo *> *)invitees {
  return [self initWithUsers:users groups:groups invitees:invitees cursor:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGSharedFileMembersSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGSharedFileMembersSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGSharedFileMembersSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGSharedFileMembersSerializer

+ (NSDictionary *)serialize:(DBSHARINGSharedFileMembers *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"users"] = [DBArraySerializer serialize:valueObj.users
                                          withBlock:^id(id elem) {
                                            return [DBSHARINGUserMembershipInfoSerializer serialize:elem];
                                          }];
  jsonDict[@"groups"] = [DBArraySerializer serialize:valueObj.groups
                                           withBlock:^id(id elem) {
                                             return [DBSHARINGGroupMembershipInfoSerializer serialize:elem];
                                           }];
  jsonDict[@"invitees"] = [DBArraySerializer serialize:valueObj.invitees
                                             withBlock:^id(id elem) {
                                               return [DBSHARINGInviteeMembershipInfoSerializer serialize:elem];
                                             }];
  if (valueObj.cursor) {
    jsonDict[@"cursor"] = valueObj.cursor;
  }

  return jsonDict;
}

+ (DBSHARINGSharedFileMembers *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBSHARINGUserMembershipInfo *> *users =
      [DBArraySerializer deserialize:valueDict[@"users"]
                           withBlock:^id(id elem) {
                             return [DBSHARINGUserMembershipInfoSerializer deserialize:elem];
                           }];
  NSArray<DBSHARINGGroupMembershipInfo *> *groups =
      [DBArraySerializer deserialize:valueDict[@"groups"]
                           withBlock:^id(id elem) {
                             return [DBSHARINGGroupMembershipInfoSerializer deserialize:elem];
                           }];
  NSArray<DBSHARINGInviteeMembershipInfo *> *invitees =
      [DBArraySerializer deserialize:valueDict[@"invitees"]
                           withBlock:^id(id elem) {
                             return [DBSHARINGInviteeMembershipInfoSerializer deserialize:elem];
                           }];
  NSString *cursor = valueDict[@"cursor"] ?: nil;

  return [[DBSHARINGSharedFileMembers alloc] initWithUsers:users groups:groups invitees:invitees cursor:cursor];
}

@end

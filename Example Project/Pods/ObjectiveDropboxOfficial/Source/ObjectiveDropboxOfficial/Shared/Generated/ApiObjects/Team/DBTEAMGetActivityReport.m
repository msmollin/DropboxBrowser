///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMBaseDfbReport.h"
#import "DBTEAMGetActivityReport.h"

#pragma mark - API Object

@implementation DBTEAMGetActivityReport

#pragma mark - Constructors

- (instancetype)initWithStartDate:(NSString *)startDate
                              adds:(NSArray<NSNumber *> *)adds
                             edits:(NSArray<NSNumber *> *)edits
                           deletes:(NSArray<NSNumber *> *)deletes
                  activeUsers28Day:(NSArray<NSNumber *> *)activeUsers28Day
                   activeUsers7Day:(NSArray<NSNumber *> *)activeUsers7Day
                   activeUsers1Day:(NSArray<NSNumber *> *)activeUsers1Day
          activeSharedFolders28Day:(NSArray<NSNumber *> *)activeSharedFolders28Day
           activeSharedFolders7Day:(NSArray<NSNumber *> *)activeSharedFolders7Day
           activeSharedFolders1Day:(NSArray<NSNumber *> *)activeSharedFolders1Day
                sharedLinksCreated:(NSArray<NSNumber *> *)sharedLinksCreated
           sharedLinksViewedByTeam:(NSArray<NSNumber *> *)sharedLinksViewedByTeam
    sharedLinksViewedByOutsideUser:(NSArray<NSNumber *> *)sharedLinksViewedByOutsideUser
    sharedLinksViewedByNotLoggedIn:(NSArray<NSNumber *> *)sharedLinksViewedByNotLoggedIn
            sharedLinksViewedTotal:(NSArray<NSNumber *> *)sharedLinksViewedTotal {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](adds);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](edits);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](deletes);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers28Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers7Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers1Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders28Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders7Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders1Day);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksCreated);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByTeam);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByOutsideUser);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByNotLoggedIn);
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedTotal);

  self = [super initWithStartDate:startDate];
  if (self) {
    _adds = adds;
    _edits = edits;
    _deletes = deletes;
    _activeUsers28Day = activeUsers28Day;
    _activeUsers7Day = activeUsers7Day;
    _activeUsers1Day = activeUsers1Day;
    _activeSharedFolders28Day = activeSharedFolders28Day;
    _activeSharedFolders7Day = activeSharedFolders7Day;
    _activeSharedFolders1Day = activeSharedFolders1Day;
    _sharedLinksCreated = sharedLinksCreated;
    _sharedLinksViewedByTeam = sharedLinksViewedByTeam;
    _sharedLinksViewedByOutsideUser = sharedLinksViewedByOutsideUser;
    _sharedLinksViewedByNotLoggedIn = sharedLinksViewedByNotLoggedIn;
    _sharedLinksViewedTotal = sharedLinksViewedTotal;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMGetActivityReportSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMGetActivityReportSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMGetActivityReportSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMGetActivityReportSerializer

+ (NSDictionary *)serialize:(DBTEAMGetActivityReport *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"start_date"] = valueObj.startDate;
  jsonDict[@"adds"] = [DBArraySerializer serialize:valueObj.adds
                                         withBlock:^id(id elem) {
                                           return elem;
                                         }];
  jsonDict[@"edits"] = [DBArraySerializer serialize:valueObj.edits
                                          withBlock:^id(id elem) {
                                            return elem;
                                          }];
  jsonDict[@"deletes"] = [DBArraySerializer serialize:valueObj.deletes
                                            withBlock:^id(id elem) {
                                              return elem;
                                            }];
  jsonDict[@"active_users_28_day"] = [DBArraySerializer serialize:valueObj.activeUsers28Day
                                                        withBlock:^id(id elem) {
                                                          return elem;
                                                        }];
  jsonDict[@"active_users_7_day"] = [DBArraySerializer serialize:valueObj.activeUsers7Day
                                                       withBlock:^id(id elem) {
                                                         return elem;
                                                       }];
  jsonDict[@"active_users_1_day"] = [DBArraySerializer serialize:valueObj.activeUsers1Day
                                                       withBlock:^id(id elem) {
                                                         return elem;
                                                       }];
  jsonDict[@"active_shared_folders_28_day"] = [DBArraySerializer serialize:valueObj.activeSharedFolders28Day
                                                                 withBlock:^id(id elem) {
                                                                   return elem;
                                                                 }];
  jsonDict[@"active_shared_folders_7_day"] = [DBArraySerializer serialize:valueObj.activeSharedFolders7Day
                                                                withBlock:^id(id elem) {
                                                                  return elem;
                                                                }];
  jsonDict[@"active_shared_folders_1_day"] = [DBArraySerializer serialize:valueObj.activeSharedFolders1Day
                                                                withBlock:^id(id elem) {
                                                                  return elem;
                                                                }];
  jsonDict[@"shared_links_created"] = [DBArraySerializer serialize:valueObj.sharedLinksCreated
                                                         withBlock:^id(id elem) {
                                                           return elem;
                                                         }];
  jsonDict[@"shared_links_viewed_by_team"] = [DBArraySerializer serialize:valueObj.sharedLinksViewedByTeam
                                                                withBlock:^id(id elem) {
                                                                  return elem;
                                                                }];
  jsonDict[@"shared_links_viewed_by_outside_user"] =
      [DBArraySerializer serialize:valueObj.sharedLinksViewedByOutsideUser
                         withBlock:^id(id elem) {
                           return elem;
                         }];
  jsonDict[@"shared_links_viewed_by_not_logged_in"] =
      [DBArraySerializer serialize:valueObj.sharedLinksViewedByNotLoggedIn
                         withBlock:^id(id elem) {
                           return elem;
                         }];
  jsonDict[@"shared_links_viewed_total"] = [DBArraySerializer serialize:valueObj.sharedLinksViewedTotal
                                                              withBlock:^id(id elem) {
                                                                return elem;
                                                              }];

  return jsonDict;
}

+ (DBTEAMGetActivityReport *)deserialize:(NSDictionary *)valueDict {
  NSString *startDate = valueDict[@"start_date"];
  NSArray<NSNumber *> *adds = [DBArraySerializer deserialize:valueDict[@"adds"]
                                                   withBlock:^id(id elem) {
                                                     return elem;
                                                   }];
  NSArray<NSNumber *> *edits = [DBArraySerializer deserialize:valueDict[@"edits"]
                                                    withBlock:^id(id elem) {
                                                      return elem;
                                                    }];
  NSArray<NSNumber *> *deletes = [DBArraySerializer deserialize:valueDict[@"deletes"]
                                                      withBlock:^id(id elem) {
                                                        return elem;
                                                      }];
  NSArray<NSNumber *> *activeUsers28Day = [DBArraySerializer deserialize:valueDict[@"active_users_28_day"]
                                                               withBlock:^id(id elem) {
                                                                 return elem;
                                                               }];
  NSArray<NSNumber *> *activeUsers7Day = [DBArraySerializer deserialize:valueDict[@"active_users_7_day"]
                                                              withBlock:^id(id elem) {
                                                                return elem;
                                                              }];
  NSArray<NSNumber *> *activeUsers1Day = [DBArraySerializer deserialize:valueDict[@"active_users_1_day"]
                                                              withBlock:^id(id elem) {
                                                                return elem;
                                                              }];
  NSArray<NSNumber *> *activeSharedFolders28Day =
      [DBArraySerializer deserialize:valueDict[@"active_shared_folders_28_day"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *activeSharedFolders7Day =
      [DBArraySerializer deserialize:valueDict[@"active_shared_folders_7_day"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *activeSharedFolders1Day =
      [DBArraySerializer deserialize:valueDict[@"active_shared_folders_1_day"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *sharedLinksCreated = [DBArraySerializer deserialize:valueDict[@"shared_links_created"]
                                                                 withBlock:^id(id elem) {
                                                                   return elem;
                                                                 }];
  NSArray<NSNumber *> *sharedLinksViewedByTeam =
      [DBArraySerializer deserialize:valueDict[@"shared_links_viewed_by_team"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *sharedLinksViewedByOutsideUser =
      [DBArraySerializer deserialize:valueDict[@"shared_links_viewed_by_outside_user"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *sharedLinksViewedByNotLoggedIn =
      [DBArraySerializer deserialize:valueDict[@"shared_links_viewed_by_not_logged_in"]
                           withBlock:^id(id elem) {
                             return elem;
                           }];
  NSArray<NSNumber *> *sharedLinksViewedTotal = [DBArraySerializer deserialize:valueDict[@"shared_links_viewed_total"]
                                                                     withBlock:^id(id elem) {
                                                                       return elem;
                                                                     }];

  return [[DBTEAMGetActivityReport alloc] initWithStartDate:startDate
                                                       adds:adds
                                                      edits:edits
                                                    deletes:deletes
                                           activeUsers28Day:activeUsers28Day
                                            activeUsers7Day:activeUsers7Day
                                            activeUsers1Day:activeUsers1Day
                                   activeSharedFolders28Day:activeSharedFolders28Day
                                    activeSharedFolders7Day:activeSharedFolders7Day
                                    activeSharedFolders1Day:activeSharedFolders1Day
                                         sharedLinksCreated:sharedLinksCreated
                                    sharedLinksViewedByTeam:sharedLinksViewedByTeam
                             sharedLinksViewedByOutsideUser:sharedLinksViewedByOutsideUser
                             sharedLinksViewedByNotLoggedIn:sharedLinksViewedByNotLoggedIn
                                     sharedLinksViewedTotal:sharedLinksViewedTotal];
}

@end

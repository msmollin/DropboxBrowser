///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBPAPERSharingTeamPolicyType;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `SharingTeamPolicyType` union.
///
/// The sharing policy type of the Paper doc.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBPAPERSharingTeamPolicyType : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The `DBPAPERSharingTeamPolicyTypeTag` enum type represents the possible tag
/// states with which the `DBPAPERSharingTeamPolicyType` union can exist.
typedef NS_ENUM(NSInteger, DBPAPERSharingTeamPolicyTypeTag) {
  /// Users who have a link to this doc can edit it.
  DBPAPERSharingTeamPolicyTypePeopleWithLinkCanEdit,

  /// Users who have a link to this doc can view and comment on it.
  DBPAPERSharingTeamPolicyTypePeopleWithLinkCanViewAndComment,

  /// Users must be explicitly invited to this doc.
  DBPAPERSharingTeamPolicyTypeInviteOnly,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBPAPERSharingTeamPolicyTypeTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "people_with_link_can_edit".
///
/// Description of the "people_with_link_can_edit" tag state: Users who have a
/// link to this doc can edit it.
///
/// @return An initialized instance.
///
- (instancetype)initWithPeopleWithLinkCanEdit;

///
/// Initializes union class with tag state of
/// "people_with_link_can_view_and_comment".
///
/// Description of the "people_with_link_can_view_and_comment" tag state: Users
/// who have a link to this doc can view and comment on it.
///
/// @return An initialized instance.
///
- (instancetype)initWithPeopleWithLinkCanViewAndComment;

///
/// Initializes union class with tag state of "invite_only".
///
/// Description of the "invite_only" tag state: Users must be explicitly invited
/// to this doc.
///
/// @return An initialized instance.
///
- (instancetype)initWithInviteOnly;

- (instancetype)init NS_UNAVAILABLE;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value
/// "people_with_link_can_edit".
///
/// @return Whether the union's current tag state has value
/// "people_with_link_can_edit".
///
- (BOOL)isPeopleWithLinkCanEdit;

///
/// Retrieves whether the union's current tag state has value
/// "people_with_link_can_view_and_comment".
///
/// @return Whether the union's current tag state has value
/// "people_with_link_can_view_and_comment".
///
- (BOOL)isPeopleWithLinkCanViewAndComment;

///
/// Retrieves whether the union's current tag state has value "invite_only".
///
/// @return Whether the union's current tag state has value "invite_only".
///
- (BOOL)isInviteOnly;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString *)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBPAPERSharingTeamPolicyType` union.
///
@interface DBPAPERSharingTeamPolicyTypeSerializer : NSObject

///
/// Serializes `DBPAPERSharingTeamPolicyType` instances.
///
/// @param instance An instance of the `DBPAPERSharingTeamPolicyType` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBPAPERSharingTeamPolicyType` API object.
///
+ (NSDictionary *)serialize:(DBPAPERSharingTeamPolicyType *)instance;

///
/// Deserializes `DBPAPERSharingTeamPolicyType` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBPAPERSharingTeamPolicyType` API object.
///
/// @return An instantiation of the `DBPAPERSharingTeamPolicyType` object.
///
+ (DBPAPERSharingTeamPolicyType *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMMembersListError;

#pragma mark - API Object

///
/// The `MembersListError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMMembersListError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBTEAMMembersListErrorTag` enum type represents the possible tag states
/// with which the `DBTEAMMembersListError` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMMembersListErrorTag) {
  /// (no description).
  DBTEAMMembersListErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMMembersListErrorTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMMembersListError` union.
///
@interface DBTEAMMembersListErrorSerializer : NSObject

///
/// Serializes `DBTEAMMembersListError` instances.
///
/// @param instance An instance of the `DBTEAMMembersListError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMMembersListError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMMembersListError * _Nonnull)instance;

///
/// Deserializes `DBTEAMMembersListError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMMembersListError` API object.
///
/// @return An instantiation of the `DBTEAMMembersListError` object.
///
+ (DBTEAMMembersListError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

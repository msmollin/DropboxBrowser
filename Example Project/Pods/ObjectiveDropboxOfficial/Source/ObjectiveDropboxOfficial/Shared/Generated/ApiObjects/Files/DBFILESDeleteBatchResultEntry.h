///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESDeleteBatchResultEntry;
@class DBFILESDeleteError;
@class DBFILESDeleteResult;

#pragma mark - API Object

///
/// The `DeleteBatchResultEntry` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESDeleteBatchResultEntry : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBFILESDeleteBatchResultEntryTag` enum type represents the possible tag
/// states with which the `DBFILESDeleteBatchResultEntry` union can exist.
typedef NS_ENUM(NSInteger, DBFILESDeleteBatchResultEntryTag) {
  /// (no description).
  DBFILESDeleteBatchResultEntrySuccess,

  /// (no description).
  DBFILESDeleteBatchResultEntryFailure,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBFILESDeleteBatchResultEntryTag tag;

/// (no description). @note Ensure the `isSuccess` method returns true before
/// accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBFILESDeleteResult * _Nonnull success;

/// (no description). @note Ensure the `isFailure` method returns true before
/// accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBFILESDeleteError * _Nonnull failure;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "success".
///
/// @param success (no description).
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSuccess:(DBFILESDeleteResult * _Nonnull)success;

///
/// Initializes union class with tag state of "failure".
///
/// @param failure (no description).
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithFailure:(DBFILESDeleteError * _Nonnull)failure;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "success".
///
/// @note Call this method and ensure it returns true before accessing the
/// `success` property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "success".
///
- (BOOL)isSuccess;

///
/// Retrieves whether the union's current tag state has value "failure".
///
/// @note Call this method and ensure it returns true before accessing the
/// `failure` property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "failure".
///
- (BOOL)isFailure;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBFILESDeleteBatchResultEntry` union.
///
@interface DBFILESDeleteBatchResultEntrySerializer : NSObject

///
/// Serializes `DBFILESDeleteBatchResultEntry` instances.
///
/// @param instance An instance of the `DBFILESDeleteBatchResultEntry` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESDeleteBatchResultEntry` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESDeleteBatchResultEntry * _Nonnull)instance;

///
/// Deserializes `DBFILESDeleteBatchResultEntry` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESDeleteBatchResultEntry` API object.
///
/// @return An instantiation of the `DBFILESDeleteBatchResultEntry` object.
///
+ (DBFILESDeleteBatchResultEntry * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

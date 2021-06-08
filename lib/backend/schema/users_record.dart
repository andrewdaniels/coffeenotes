import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get userName;

  @nullable
  String get userPassword;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  Timestamp get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  int get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..userName = ''
    ..userPassword = ''
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..photoUrl = ''
    ..phoneNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;
}

Map<String, dynamic> createUsersRecordData({
  String userName,
  String userPassword,
  String email,
  String displayName,
  String uid,
  Timestamp createdTime,
  String photoUrl,
  int phoneNumber,
}) =>
    serializers.serializeWith(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..userName = userName
          ..userPassword = userPassword
          ..email = email
          ..displayName = displayName
          ..uid = uid
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber));

UsersRecord get dummyUsersRecord {
  final builder = UsersRecordBuilder()
    ..userName = dummyString
    ..userPassword = dummyString
    ..email = dummyString
    ..displayName = dummyString
    ..uid = dummyString
    ..createdTime = dummyTimestamp
    ..photoUrl = dummyImagePath
    ..phoneNumber = dummyInteger;
  return builder.build();
}

List<UsersRecord> createDummyUsersRecord({int count}) =>
    List.generate(count, (_) => dummyUsersRecord);

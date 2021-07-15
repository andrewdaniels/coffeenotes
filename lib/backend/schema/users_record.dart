import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

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
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..userName = ''
    ..userPassword = ''
    ..email = ''
    ..displayName = ''
    ..uid = ''
    ..phoneNumber = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String userName,
  String userPassword,
  String email,
  String displayName,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String photoUrl,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..userName = userName
          ..userPassword = userPassword
          ..email = email
          ..displayName = displayName
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..photoUrl = photoUrl));

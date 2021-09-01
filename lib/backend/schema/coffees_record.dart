import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coffees_record.g.dart';

abstract class CoffeesRecord
    implements Built<CoffeesRecord, CoffeesRecordBuilder> {
  static Serializer<CoffeesRecord> get serializer => _$coffeesRecordSerializer;

  @nullable
  String get coffeeName;

  @nullable
  String get roasterName;

  @nullable
  DateTime get roastDate;

  @nullable
  BuiltList<DocumentReference> get coffeeNotes;

  @nullable
  DocumentReference get userRecord;

  @nullable
  String get coffeePhoto;

  @nullable
  DateTime get dateCreated;

  @nullable
  String get coffeeProcess;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoffeesRecordBuilder builder) => builder
    ..coffeeName = ''
    ..roasterName = ''
    ..coffeeNotes = ListBuilder()
    ..coffeePhoto = ''
    ..coffeeProcess = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coffees');

  static Stream<CoffeesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoffeesRecord._();
  factory CoffeesRecord([void Function(CoffeesRecordBuilder) updates]) =
      _$CoffeesRecord;

  static CoffeesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCoffeesRecordData({
  String coffeeName,
  String roasterName,
  DateTime roastDate,
  DocumentReference userRecord,
  String coffeePhoto,
  DateTime dateCreated,
  String coffeeProcess,
}) =>
    serializers.toFirestore(
        CoffeesRecord.serializer,
        CoffeesRecord((c) => c
          ..coffeeName = coffeeName
          ..roasterName = roasterName
          ..roastDate = roastDate
          ..coffeeNotes = null
          ..userRecord = userRecord
          ..coffeePhoto = coffeePhoto
          ..dateCreated = dateCreated
          ..coffeeProcess = coffeeProcess));

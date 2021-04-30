import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'coffee_notes_record.g.dart';

abstract class CoffeeNotesRecord
    implements Built<CoffeeNotesRecord, CoffeeNotesRecordBuilder> {
  static Serializer<CoffeeNotesRecord> get serializer =>
      _$coffeeNotesRecordSerializer;

  @nullable
  String get coffeeName;

  @nullable
  int get coffeeWeight;

  @nullable
  int get waterWeight;

  @nullable
  String get brewTime;

  @nullable
  int get grindSize;

  @nullable
  String get grinderType;

  @nullable
  int get coffeeRating;

  @nullable
  Timestamp get timeStamp;

  @nullable
  String get coffeeNotes;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoffeeNotesRecordBuilder builder) => builder
    ..coffeeName = ''
    ..coffeeWeight = 0
    ..waterWeight = 0
    ..brewTime = ''
    ..grindSize = 0
    ..grinderType = ''
    ..coffeeRating = 0
    ..coffeeNotes = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coffeeNotes');

  static Stream<CoffeeNotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoffeeNotesRecord._();
  factory CoffeeNotesRecord([void Function(CoffeeNotesRecordBuilder) updates]) =
      _$CoffeeNotesRecord;
}

Map<String, dynamic> createCoffeeNotesRecordData({
  String coffeeName,
  int coffeeWeight,
  int waterWeight,
  String brewTime,
  int grindSize,
  String grinderType,
  int coffeeRating,
  Timestamp timeStamp,
  String coffeeNotes,
}) =>
    serializers.serializeWith(
        CoffeeNotesRecord.serializer,
        CoffeeNotesRecord((c) => c
          ..coffeeName = coffeeName
          ..coffeeWeight = coffeeWeight
          ..waterWeight = waterWeight
          ..brewTime = brewTime
          ..grindSize = grindSize
          ..grinderType = grinderType
          ..coffeeRating = coffeeRating
          ..timeStamp = timeStamp
          ..coffeeNotes = coffeeNotes));

CoffeeNotesRecord get dummyCoffeeNotesRecord {
  final builder = CoffeeNotesRecordBuilder()
    ..coffeeName = dummyString
    ..coffeeWeight = dummyInteger
    ..waterWeight = dummyInteger
    ..brewTime = dummyString
    ..grindSize = dummyInteger
    ..grinderType = dummyString
    ..coffeeRating = dummyInteger
    ..timeStamp = dummyTimestamp
    ..coffeeNotes = dummyString;
  return builder.build();
}

List<CoffeeNotesRecord> createDummyCoffeeNotesRecord({int count}) =>
    List.generate(count, (_) => dummyCoffeeNotesRecord);

import 'dart:async';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

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
  String get grinderType;

  @nullable
  int get coffeeRating;

  @nullable
  DateTime get timeStamp;

  @nullable
  String get coffeeNotes;

  @nullable
  double get grindSize;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoffeeNotesRecordBuilder builder) => builder
    ..coffeeName = ''
    ..coffeeWeight = 0
    ..waterWeight = 0
    ..brewTime = ''
    ..grinderType = ''
    ..coffeeRating = 0
    ..coffeeNotes = ''
    ..grindSize = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coffeeNotes');

  static Stream<CoffeeNotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoffeeNotesRecord._();
  factory CoffeeNotesRecord([void Function(CoffeeNotesRecordBuilder) updates]) =
      _$CoffeeNotesRecord;

  static CoffeeNotesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCoffeeNotesRecordData({
  String coffeeName,
  int coffeeWeight,
  int waterWeight,
  String brewTime,
  String grinderType,
  int coffeeRating,
  DateTime timeStamp,
  String coffeeNotes,
  double grindSize,
}) =>
    serializers.toFirestore(
        CoffeeNotesRecord.serializer,
        CoffeeNotesRecord((c) => c
          ..coffeeName = coffeeName
          ..coffeeWeight = coffeeWeight
          ..waterWeight = waterWeight
          ..brewTime = brewTime
          ..grinderType = grinderType
          ..coffeeRating = coffeeRating
          ..timeStamp = timeStamp
          ..coffeeNotes = coffeeNotes
          ..grindSize = grindSize));

CoffeeNotesRecord get dummyCoffeeNotesRecord {
  final builder = CoffeeNotesRecordBuilder()
    ..coffeeName = dummyString
    ..coffeeWeight = dummyInteger
    ..waterWeight = dummyInteger
    ..brewTime = dummyString
    ..grinderType = dummyString
    ..coffeeRating = dummyInteger
    ..timeStamp = dummyTimestamp
    ..coffeeNotes = dummyString
    ..grindSize = dummyDouble;
  return builder.build();
}

List<CoffeeNotesRecord> createDummyCoffeeNotesRecord({int count}) =>
    List.generate(count, (_) => dummyCoffeeNotesRecord);

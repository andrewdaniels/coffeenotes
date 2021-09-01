import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coffee_notes_record.g.dart';

abstract class CoffeeNotesRecord
    implements Built<CoffeeNotesRecord, CoffeeNotesRecordBuilder> {
  static Serializer<CoffeeNotesRecord> get serializer =>
      _$coffeeNotesRecordSerializer;

  @nullable
  String get coffeeName;

  @nullable
  String get brewTime;

  @nullable
  String get grinderType;

  @nullable
  DateTime get timeStamp;

  @nullable
  String get coffeeNotes;

  @nullable
  double get grindSize;

  @nullable
  String get roasterName;

  @nullable
  int get waterWeight;

  @nullable
  int get coffeeWeight;

  @nullable
  String get coffeeRating;

  @nullable
  @BuiltValueField(wireName: 'Coffee')
  DocumentReference get coffee;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoffeeNotesRecordBuilder builder) => builder
    ..coffeeName = ''
    ..brewTime = ''
    ..grinderType = ''
    ..coffeeNotes = ''
    ..grindSize = 0.0
    ..roasterName = ''
    ..waterWeight = 0
    ..coffeeWeight = 0
    ..coffeeRating = '';

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
  String brewTime,
  String grinderType,
  DateTime timeStamp,
  String coffeeNotes,
  double grindSize,
  String roasterName,
  int waterWeight,
  int coffeeWeight,
  String coffeeRating,
  DocumentReference coffee,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        CoffeeNotesRecord.serializer,
        CoffeeNotesRecord((c) => c
          ..coffeeName = coffeeName
          ..brewTime = brewTime
          ..grinderType = grinderType
          ..timeStamp = timeStamp
          ..coffeeNotes = coffeeNotes
          ..grindSize = grindSize
          ..roasterName = roasterName
          ..waterWeight = waterWeight
          ..coffeeWeight = coffeeWeight
          ..coffeeRating = coffeeRating
          ..coffee = coffee
          ..user = user));

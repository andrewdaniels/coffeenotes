import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coffee_types_record.g.dart';

abstract class CoffeeTypesRecord
    implements Built<CoffeeTypesRecord, CoffeeTypesRecordBuilder> {
  static Serializer<CoffeeTypesRecord> get serializer =>
      _$coffeeTypesRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  BuiltList<String> get coffees;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoffeeTypesRecordBuilder builder) =>
      builder..coffees = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coffee_types');

  static Stream<CoffeeTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoffeeTypesRecord._();
  factory CoffeeTypesRecord([void Function(CoffeeTypesRecordBuilder) updates]) =
      _$CoffeeTypesRecord;

  static CoffeeTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCoffeeTypesRecordData({
  DocumentReference user,
}) =>
    serializers.toFirestore(
        CoffeeTypesRecord.serializer,
        CoffeeTypesRecord((c) => c
          ..user = user
          ..coffees = null));

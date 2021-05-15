// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_notes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoffeeNotesRecord> _$coffeeNotesRecordSerializer =
    new _$CoffeeNotesRecordSerializer();

class _$CoffeeNotesRecordSerializer
    implements StructuredSerializer<CoffeeNotesRecord> {
  @override
  final Iterable<Type> types = const [CoffeeNotesRecord, _$CoffeeNotesRecord];
  @override
  final String wireName = 'CoffeeNotesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CoffeeNotesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.coffeeName;
    if (value != null) {
      result
        ..add('coffeeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coffeeWeight;
    if (value != null) {
      result
        ..add('coffeeWeight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.waterWeight;
    if (value != null) {
      result
        ..add('waterWeight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.brewTime;
    if (value != null) {
      result
        ..add('brewTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grindSize;
    if (value != null) {
      result
        ..add('grindSize')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.grinderType;
    if (value != null) {
      result
        ..add('grinderType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coffeeRating;
    if (value != null) {
      result
        ..add('coffeeRating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timeStamp;
    if (value != null) {
      result
        ..add('timeStamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Timestamp)));
    }
    value = object.coffeeNotes;
    if (value != null) {
      result
        ..add('coffeeNotes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  CoffeeNotesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoffeeNotesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'coffeeName':
          result.coffeeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coffeeWeight':
          result.coffeeWeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'waterWeight':
          result.waterWeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'brewTime':
          result.brewTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grindSize':
          result.grindSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'grinderType':
          result.grinderType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coffeeRating':
          result.coffeeRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'timeStamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(Timestamp)) as Timestamp;
          break;
        case 'coffeeNotes':
          result.coffeeNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$CoffeeNotesRecord extends CoffeeNotesRecord {
  @override
  final String coffeeName;
  @override
  final int coffeeWeight;
  @override
  final int waterWeight;
  @override
  final String brewTime;
  @override
  final int grindSize;
  @override
  final String grinderType;
  @override
  final int coffeeRating;
  @override
  final Timestamp timeStamp;
  @override
  final String coffeeNotes;
  @override
  final DocumentReference reference;

  factory _$CoffeeNotesRecord(
          [void Function(CoffeeNotesRecordBuilder) updates]) =>
      (new CoffeeNotesRecordBuilder()..update(updates)).build();

  _$CoffeeNotesRecord._(
      {this.coffeeName,
      this.coffeeWeight,
      this.waterWeight,
      this.brewTime,
      this.grindSize,
      this.grinderType,
      this.coffeeRating,
      this.timeStamp,
      this.coffeeNotes,
      this.reference})
      : super._();

  @override
  CoffeeNotesRecord rebuild(void Function(CoffeeNotesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoffeeNotesRecordBuilder toBuilder() =>
      new CoffeeNotesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoffeeNotesRecord &&
        coffeeName == other.coffeeName &&
        coffeeWeight == other.coffeeWeight &&
        waterWeight == other.waterWeight &&
        brewTime == other.brewTime &&
        grindSize == other.grindSize &&
        grinderType == other.grinderType &&
        coffeeRating == other.coffeeRating &&
        timeStamp == other.timeStamp &&
        coffeeNotes == other.coffeeNotes &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, coffeeName.hashCode),
                                        coffeeWeight.hashCode),
                                    waterWeight.hashCode),
                                brewTime.hashCode),
                            grindSize.hashCode),
                        grinderType.hashCode),
                    coffeeRating.hashCode),
                timeStamp.hashCode),
            coffeeNotes.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoffeeNotesRecord')
          ..add('coffeeName', coffeeName)
          ..add('coffeeWeight', coffeeWeight)
          ..add('waterWeight', waterWeight)
          ..add('brewTime', brewTime)
          ..add('grindSize', grindSize)
          ..add('grinderType', grinderType)
          ..add('coffeeRating', coffeeRating)
          ..add('timeStamp', timeStamp)
          ..add('coffeeNotes', coffeeNotes)
          ..add('reference', reference))
        .toString();
  }
}

class CoffeeNotesRecordBuilder
    implements Builder<CoffeeNotesRecord, CoffeeNotesRecordBuilder> {
  _$CoffeeNotesRecord _$v;

  String _coffeeName;
  String get coffeeName => _$this._coffeeName;
  set coffeeName(String coffeeName) => _$this._coffeeName = coffeeName;

  int _coffeeWeight;
  int get coffeeWeight => _$this._coffeeWeight;
  set coffeeWeight(int coffeeWeight) => _$this._coffeeWeight = coffeeWeight;

  int _waterWeight;
  int get waterWeight => _$this._waterWeight;
  set waterWeight(int waterWeight) => _$this._waterWeight = waterWeight;

  String _brewTime;
  String get brewTime => _$this._brewTime;
  set brewTime(String brewTime) => _$this._brewTime = brewTime;

  int _grindSize;
  int get grindSize => _$this._grindSize;
  set grindSize(int grindSize) => _$this._grindSize = grindSize;

  String _grinderType;
  String get grinderType => _$this._grinderType;
  set grinderType(String grinderType) => _$this._grinderType = grinderType;

  int _coffeeRating;
  int get coffeeRating => _$this._coffeeRating;
  set coffeeRating(int coffeeRating) => _$this._coffeeRating = coffeeRating;

  Timestamp _timeStamp;
  Timestamp get timeStamp => _$this._timeStamp;
  set timeStamp(Timestamp timeStamp) => _$this._timeStamp = timeStamp;

  String _coffeeNotes;
  String get coffeeNotes => _$this._coffeeNotes;
  set coffeeNotes(String coffeeNotes) => _$this._coffeeNotes = coffeeNotes;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  CoffeeNotesRecordBuilder() {
    CoffeeNotesRecord._initializeBuilder(this);
  }

  CoffeeNotesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coffeeName = $v.coffeeName;
      _coffeeWeight = $v.coffeeWeight;
      _waterWeight = $v.waterWeight;
      _brewTime = $v.brewTime;
      _grindSize = $v.grindSize;
      _grinderType = $v.grinderType;
      _coffeeRating = $v.coffeeRating;
      _timeStamp = $v.timeStamp;
      _coffeeNotes = $v.coffeeNotes;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoffeeNotesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoffeeNotesRecord;
  }

  @override
  void update(void Function(CoffeeNotesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoffeeNotesRecord build() {
    final _$result = _$v ??
        new _$CoffeeNotesRecord._(
            coffeeName: coffeeName,
            coffeeWeight: coffeeWeight,
            waterWeight: waterWeight,
            brewTime: brewTime,
            grindSize: grindSize,
            grinderType: grinderType,
            coffeeRating: coffeeRating,
            timeStamp: timeStamp,
            coffeeNotes: coffeeNotes,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

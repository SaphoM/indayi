import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogoRecord extends FirestoreRecord {
  LogoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Logo');

  static Stream<LogoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogoRecord.fromSnapshot(s));

  static Future<LogoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogoRecord.fromSnapshot(s));

  static LogoRecord fromSnapshot(DocumentSnapshot snapshot) => LogoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogoRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogoRecordDocumentEquality implements Equality<LogoRecord> {
  const LogoRecordDocumentEquality();

  @override
  bool equals(LogoRecord? e1, LogoRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(LogoRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is LogoRecord;
}

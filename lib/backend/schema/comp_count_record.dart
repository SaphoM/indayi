import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompCountRecord extends FirestoreRecord {
  CompCountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  void _initializeFields() {
    _count = castToType<int>(snapshotData['count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comp_Count');

  static Stream<CompCountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompCountRecord.fromSnapshot(s));

  static Future<CompCountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompCountRecord.fromSnapshot(s));

  static CompCountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompCountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompCountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompCountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompCountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompCountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompCountRecordData({
  int? count,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'count': count,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompCountRecordDocumentEquality implements Equality<CompCountRecord> {
  const CompCountRecordDocumentEquality();

  @override
  bool equals(CompCountRecord? e1, CompCountRecord? e2) {
    return e1?.count == e2?.count;
  }

  @override
  int hash(CompCountRecord? e) => const ListEquality().hash([e?.count]);

  @override
  bool isValidKey(Object? o) => o is CompCountRecord;
}

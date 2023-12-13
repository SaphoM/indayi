import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterestedPromotersRecord extends FirestoreRecord {
  InterestedPromotersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CampaignName" field.
  String? _campaignName;
  String get campaignName => _campaignName ?? '';
  bool hasCampaignName() => _campaignName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Interested" field.
  bool? _interested;
  bool get interested => _interested ?? false;
  bool hasInterested() => _interested != null;

  void _initializeFields() {
    _campaignName = snapshotData['CampaignName'] as String?;
    _description = snapshotData['Description'] as String?;
    _interested = snapshotData['Interested'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('interestedPromoters');

  static Stream<InterestedPromotersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterestedPromotersRecord.fromSnapshot(s));

  static Future<InterestedPromotersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InterestedPromotersRecord.fromSnapshot(s));

  static InterestedPromotersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterestedPromotersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterestedPromotersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterestedPromotersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterestedPromotersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterestedPromotersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterestedPromotersRecordData({
  String? campaignName,
  String? description,
  bool? interested,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CampaignName': campaignName,
      'Description': description,
      'Interested': interested,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterestedPromotersRecordDocumentEquality
    implements Equality<InterestedPromotersRecord> {
  const InterestedPromotersRecordDocumentEquality();

  @override
  bool equals(InterestedPromotersRecord? e1, InterestedPromotersRecord? e2) {
    return e1?.campaignName == e2?.campaignName &&
        e1?.description == e2?.description &&
        e1?.interested == e2?.interested;
  }

  @override
  int hash(InterestedPromotersRecord? e) => const ListEquality()
      .hash([e?.campaignName, e?.description, e?.interested]);

  @override
  bool isValidKey(Object? o) => o is InterestedPromotersRecord;
}

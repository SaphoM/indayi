import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhotosRecord extends FirestoreRecord {
  PhotosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _photo = snapshotData['Photo'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Photos');

  static Stream<PhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhotosRecord.fromSnapshot(s));

  static Future<PhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhotosRecord.fromSnapshot(s));

  static PhotosRecord fromSnapshot(DocumentSnapshot snapshot) => PhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotosRecordData({
  String? photo,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Photo': photo,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhotosRecordDocumentEquality implements Equality<PhotosRecord> {
  const PhotosRecordDocumentEquality();

  @override
  bool equals(PhotosRecord? e1, PhotosRecord? e2) {
    return e1?.photo == e2?.photo && e1?.user == e2?.user;
  }

  @override
  int hash(PhotosRecord? e) => const ListEquality().hash([e?.photo, e?.user]);

  @override
  bool isValidKey(Object? o) => o is PhotosRecord;
}

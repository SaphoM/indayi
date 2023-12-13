import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientsRecord extends FirestoreRecord {
  ClientsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "TelephoneNo" field.
  String? _telephoneNo;
  String get telephoneNo => _telephoneNo ?? '';
  bool hasTelephoneNo() => _telephoneNo != null;

  // "CellphoneNo" field.
  String? _cellphoneNo;
  String get cellphoneNo => _cellphoneNo ?? '';
  bool hasCellphoneNo() => _cellphoneNo != null;

  // "Logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "Users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "CompanyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _address = snapshotData['Address'] as String?;
    _notes = snapshotData['Notes'] as String?;
    _email = snapshotData['Email'] as String?;
    _telephoneNo = snapshotData['TelephoneNo'] as String?;
    _cellphoneNo = snapshotData['CellphoneNo'] as String?;
    _logo = snapshotData['Logo'] as String?;
    _users = snapshotData['Users'] as DocumentReference?;
    _companyName = snapshotData['CompanyName'] as String?;
    _photo = snapshotData['Photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Clients');

  static Stream<ClientsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientsRecord.fromSnapshot(s));

  static Future<ClientsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientsRecord.fromSnapshot(s));

  static ClientsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientsRecordData({
  String? name,
  String? address,
  String? notes,
  String? email,
  String? telephoneNo,
  String? cellphoneNo,
  String? logo,
  DocumentReference? users,
  String? companyName,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Address': address,
      'Notes': notes,
      'Email': email,
      'TelephoneNo': telephoneNo,
      'CellphoneNo': cellphoneNo,
      'Logo': logo,
      'Users': users,
      'CompanyName': companyName,
      'Photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientsRecordDocumentEquality implements Equality<ClientsRecord> {
  const ClientsRecordDocumentEquality();

  @override
  bool equals(ClientsRecord? e1, ClientsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.address == e2?.address &&
        e1?.notes == e2?.notes &&
        e1?.email == e2?.email &&
        e1?.telephoneNo == e2?.telephoneNo &&
        e1?.cellphoneNo == e2?.cellphoneNo &&
        e1?.logo == e2?.logo &&
        e1?.users == e2?.users &&
        e1?.companyName == e2?.companyName &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(ClientsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.address,
        e?.notes,
        e?.email,
        e?.telephoneNo,
        e?.cellphoneNo,
        e?.logo,
        e?.users,
        e?.companyName,
        e?.photo
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientsRecord;
}

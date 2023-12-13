import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "ProductDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "ProductType" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "CompaignProductKind" field.
  String? _compaignProductKind;
  String get compaignProductKind => _compaignProductKind ?? '';
  bool hasCompaignProductKind() => _compaignProductKind != null;

  // "Notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "ClientEmail" field.
  String? _clientEmail;
  String get clientEmail => _clientEmail ?? '';
  bool hasClientEmail() => _clientEmail != null;

  // "CompaignTitle" field.
  String? _compaignTitle;
  String get compaignTitle => _compaignTitle ?? '';
  bool hasCompaignTitle() => _compaignTitle != null;

  // "PromotorsEmail" field.
  String? _promotorsEmail;
  String get promotorsEmail => _promotorsEmail ?? '';
  bool hasPromotorsEmail() => _promotorsEmail != null;

  // "CampaignName" field.
  DocumentReference? _campaignName;
  DocumentReference? get campaignName => _campaignName;
  bool hasCampaignName() => _campaignName != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _image = snapshotData['Image'] as String?;
    _productDescription = snapshotData['ProductDescription'] as String?;
    _productType = snapshotData['ProductType'] as String?;
    _compaignProductKind = snapshotData['CompaignProductKind'] as String?;
    _notes = snapshotData['Notes'] as String?;
    _clientEmail = snapshotData['ClientEmail'] as String?;
    _compaignTitle = snapshotData['CompaignTitle'] as String?;
    _promotorsEmail = snapshotData['PromotorsEmail'] as String?;
    _campaignName = snapshotData['CampaignName'] as DocumentReference?;
    _user = snapshotData['User'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? image,
  String? productDescription,
  String? productType,
  String? compaignProductKind,
  String? notes,
  String? clientEmail,
  String? compaignTitle,
  String? promotorsEmail,
  DocumentReference? campaignName,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image': image,
      'ProductDescription': productDescription,
      'ProductType': productType,
      'CompaignProductKind': compaignProductKind,
      'Notes': notes,
      'ClientEmail': clientEmail,
      'CompaignTitle': compaignTitle,
      'PromotorsEmail': promotorsEmail,
      'CampaignName': campaignName,
      'User': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productType == e2?.productType &&
        e1?.compaignProductKind == e2?.compaignProductKind &&
        e1?.notes == e2?.notes &&
        e1?.clientEmail == e2?.clientEmail &&
        e1?.compaignTitle == e2?.compaignTitle &&
        e1?.promotorsEmail == e2?.promotorsEmail &&
        e1?.campaignName == e2?.campaignName &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.productDescription,
        e?.productType,
        e?.compaignProductKind,
        e?.notes,
        e?.clientEmail,
        e?.compaignTitle,
        e?.promotorsEmail,
        e?.campaignName,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}

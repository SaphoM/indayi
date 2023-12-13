import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompaignRecord extends FirestoreRecord {
  CompaignRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "UserlistEmails" field.
  List<String>? _userlistEmails;
  List<String> get userlistEmails => _userlistEmails ?? const [];
  bool hasUserlistEmails() => _userlistEmails != null;

  // "Interesteredusers" field.
  List<DocumentReference>? _interesteredusers;
  List<DocumentReference> get interesteredusers =>
      _interesteredusers ?? const [];
  bool hasInteresteredusers() => _interesteredusers != null;

  // "InterestedPromotersList" field.
  List<String>? _interestedPromotersList;
  List<String> get interestedPromotersList =>
      _interestedPromotersList ?? const [];
  bool hasInterestedPromotersList() => _interestedPromotersList != null;

  // "Value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Ratings" field.
  String? _ratings;
  String get ratings => _ratings ?? '';
  bool hasRatings() => _ratings != null;

  // "Place" field.
  String? _place;
  String get place => _place ?? '';
  bool hasPlace() => _place != null;

  // "Enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  // "Clicked" field.
  bool? _clicked;
  bool get clicked => _clicked ?? false;
  bool hasClicked() => _clicked != null;

  // "Products" field.
  List<String>? _products;
  List<String> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "CompanyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _description = snapshotData['Description'] as String?;
    _image = snapshotData['Image'] as String?;
    _user = snapshotData['User'] as DocumentReference?;
    _userlistEmails = getDataList(snapshotData['UserlistEmails']);
    _interesteredusers = getDataList(snapshotData['Interesteredusers']);
    _interestedPromotersList =
        getDataList(snapshotData['InterestedPromotersList']);
    _value = castToType<double>(snapshotData['Value']);
    _date = snapshotData['Date'] as DateTime?;
    _location = snapshotData['Location'] as String?;
    _ratings = snapshotData['Ratings'] as String?;
    _place = snapshotData['Place'] as String?;
    _enddate = snapshotData['Enddate'] as DateTime?;
    _clicked = snapshotData['Clicked'] as bool?;
    _products = getDataList(snapshotData['Products']);
    _companyName = snapshotData['CompanyName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Compaign');

  static Stream<CompaignRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompaignRecord.fromSnapshot(s));

  static Future<CompaignRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompaignRecord.fromSnapshot(s));

  static CompaignRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompaignRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompaignRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompaignRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompaignRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompaignRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompaignRecordData({
  String? title,
  String? description,
  String? image,
  DocumentReference? user,
  double? value,
  DateTime? date,
  String? location,
  String? ratings,
  String? place,
  DateTime? enddate,
  bool? clicked,
  String? companyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Description': description,
      'Image': image,
      'User': user,
      'Value': value,
      'Date': date,
      'Location': location,
      'Ratings': ratings,
      'Place': place,
      'Enddate': enddate,
      'Clicked': clicked,
      'CompanyName': companyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompaignRecordDocumentEquality implements Equality<CompaignRecord> {
  const CompaignRecordDocumentEquality();

  @override
  bool equals(CompaignRecord? e1, CompaignRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.userlistEmails, e2?.userlistEmails) &&
        listEquality.equals(e1?.interesteredusers, e2?.interesteredusers) &&
        listEquality.equals(
            e1?.interestedPromotersList, e2?.interestedPromotersList) &&
        e1?.value == e2?.value &&
        e1?.date == e2?.date &&
        e1?.location == e2?.location &&
        e1?.ratings == e2?.ratings &&
        e1?.place == e2?.place &&
        e1?.enddate == e2?.enddate &&
        e1?.clicked == e2?.clicked &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.companyName == e2?.companyName;
  }

  @override
  int hash(CompaignRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.image,
        e?.user,
        e?.userlistEmails,
        e?.interesteredusers,
        e?.interestedPromotersList,
        e?.value,
        e?.date,
        e?.location,
        e?.ratings,
        e?.place,
        e?.enddate,
        e?.clicked,
        e?.products,
        e?.companyName
      ]);

  @override
  bool isValidKey(Object? o) => o is CompaignRecord;
}

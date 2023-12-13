import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionslistRecord extends FirestoreRecord {
  PromotionslistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PromoName" field.
  String? _promoName;
  String get promoName => _promoName ?? '';
  bool hasPromoName() => _promoName != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Campaign" field.
  DocumentReference? _campaign;
  DocumentReference? get campaign => _campaign;
  bool hasCampaign() => _campaign != null;

  // "Startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  bool hasStartdate() => _startdate != null;

  // "Enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  // "Hoursworked" field.
  double? _hoursworked;
  double get hoursworked => _hoursworked ?? 0.0;
  bool hasHoursworked() => _hoursworked != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "Paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  bool hasPaid() => _paid != null;

  // "Report" field.
  DocumentReference? _report;
  DocumentReference? get report => _report;
  bool hasReport() => _report != null;

  // "TaskCompletedreported" field.
  bool? _taskCompletedreported;
  bool get taskCompletedreported => _taskCompletedreported ?? false;
  bool hasTaskCompletedreported() => _taskCompletedreported != null;

  // "BalanceOwe" field.
  double? _balanceOwe;
  double get balanceOwe => _balanceOwe ?? 0.0;
  bool hasBalanceOwe() => _balanceOwe != null;

  // "PromoAmount" field.
  double? _promoAmount;
  double get promoAmount => _promoAmount ?? 0.0;
  bool hasPromoAmount() => _promoAmount != null;

  // "ReportSubmitted" field.
  String? _reportSubmitted;
  String get reportSubmitted => _reportSubmitted ?? '';
  bool hasReportSubmitted() => _reportSubmitted != null;

  // "Ratings" field.
  double? _ratings;
  double get ratings => _ratings ?? 0.0;
  bool hasRatings() => _ratings != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Products" field.
  List<String>? _products;
  List<String> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "Accept" field.
  String? _accept;
  String get accept => _accept ?? '';
  bool hasAccept() => _accept != null;

  void _initializeFields() {
    _promoName = snapshotData['PromoName'] as String?;
    _user = snapshotData['User'] as DocumentReference?;
    _description = snapshotData['Description'] as String?;
    _campaign = snapshotData['Campaign'] as DocumentReference?;
    _startdate = snapshotData['Startdate'] as DateTime?;
    _enddate = snapshotData['Enddate'] as DateTime?;
    _hoursworked = castToType<double>(snapshotData['Hoursworked']);
    _rate = castToType<double>(snapshotData['Rate']);
    _paid = snapshotData['Paid'] as bool?;
    _report = snapshotData['Report'] as DocumentReference?;
    _taskCompletedreported = snapshotData['TaskCompletedreported'] as bool?;
    _balanceOwe = castToType<double>(snapshotData['BalanceOwe']);
    _promoAmount = castToType<double>(snapshotData['PromoAmount']);
    _reportSubmitted = snapshotData['ReportSubmitted'] as String?;
    _ratings = castToType<double>(snapshotData['Ratings']);
    _image = snapshotData['Image'] as String?;
    _products = getDataList(snapshotData['Products']);
    _accept = snapshotData['Accept'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promotionslist');

  static Stream<PromotionslistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionslistRecord.fromSnapshot(s));

  static Future<PromotionslistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionslistRecord.fromSnapshot(s));

  static PromotionslistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionslistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionslistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionslistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionslistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionslistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionslistRecordData({
  String? promoName,
  DocumentReference? user,
  String? description,
  DocumentReference? campaign,
  DateTime? startdate,
  DateTime? enddate,
  double? hoursworked,
  double? rate,
  bool? paid,
  DocumentReference? report,
  bool? taskCompletedreported,
  double? balanceOwe,
  double? promoAmount,
  String? reportSubmitted,
  double? ratings,
  String? image,
  String? accept,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PromoName': promoName,
      'User': user,
      'Description': description,
      'Campaign': campaign,
      'Startdate': startdate,
      'Enddate': enddate,
      'Hoursworked': hoursworked,
      'Rate': rate,
      'Paid': paid,
      'Report': report,
      'TaskCompletedreported': taskCompletedreported,
      'BalanceOwe': balanceOwe,
      'PromoAmount': promoAmount,
      'ReportSubmitted': reportSubmitted,
      'Ratings': ratings,
      'Image': image,
      'Accept': accept,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionslistRecordDocumentEquality
    implements Equality<PromotionslistRecord> {
  const PromotionslistRecordDocumentEquality();

  @override
  bool equals(PromotionslistRecord? e1, PromotionslistRecord? e2) {
    const listEquality = ListEquality();
    return e1?.promoName == e2?.promoName &&
        e1?.user == e2?.user &&
        e1?.description == e2?.description &&
        e1?.campaign == e2?.campaign &&
        e1?.startdate == e2?.startdate &&
        e1?.enddate == e2?.enddate &&
        e1?.hoursworked == e2?.hoursworked &&
        e1?.rate == e2?.rate &&
        e1?.paid == e2?.paid &&
        e1?.report == e2?.report &&
        e1?.taskCompletedreported == e2?.taskCompletedreported &&
        e1?.balanceOwe == e2?.balanceOwe &&
        e1?.promoAmount == e2?.promoAmount &&
        e1?.reportSubmitted == e2?.reportSubmitted &&
        e1?.ratings == e2?.ratings &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.accept == e2?.accept;
  }

  @override
  int hash(PromotionslistRecord? e) => const ListEquality().hash([
        e?.promoName,
        e?.user,
        e?.description,
        e?.campaign,
        e?.startdate,
        e?.enddate,
        e?.hoursworked,
        e?.rate,
        e?.paid,
        e?.report,
        e?.taskCompletedreported,
        e?.balanceOwe,
        e?.promoAmount,
        e?.reportSubmitted,
        e?.ratings,
        e?.image,
        e?.products,
        e?.accept
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionslistRecord;
}

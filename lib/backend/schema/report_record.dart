import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportRecord extends FirestoreRecord {
  ReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Contactnumber" field.
  String? _contactnumber;
  String get contactnumber => _contactnumber ?? '';
  bool hasContactnumber() => _contactnumber != null;

  // "Noofstaffonstand" field.
  int? _noofstaffonstand;
  int get noofstaffonstand => _noofstaffonstand ?? 0;
  bool hasNoofstaffonstand() => _noofstaffonstand != null;

  // "Whatisthemainpurposeoftheactivation" field.
  String? _whatisthemainpurposeoftheactivation;
  String get whatisthemainpurposeoftheactivation =>
      _whatisthemainpurposeoftheactivation ?? '';
  bool hasWhatisthemainpurposeoftheactivation() =>
      _whatisthemainpurposeoftheactivation != null;

  // "Describethelayoutofthestandorthe" field.
  String? _describethelayoutofthestandorthe;
  String get describethelayoutofthestandorthe =>
      _describethelayoutofthestandorthe ?? '';
  bool hasDescribethelayoutofthestandorthe() =>
      _describethelayoutofthestandorthe != null;

  // "Whatarethepositiveconsumercomments" field.
  String? _whatarethepositiveconsumercomments;
  String get whatarethepositiveconsumercomments =>
      _whatarethepositiveconsumercomments ?? '';
  bool hasWhatarethepositiveconsumercomments() =>
      _whatarethepositiveconsumercomments != null;

  // "Whatarethenegativeconsumercomments" field.
  String? _whatarethenegativeconsumercomments;
  String get whatarethenegativeconsumercomments =>
      _whatarethenegativeconsumercomments ?? '';
  bool hasWhatarethenegativeconsumercomments() =>
      _whatarethenegativeconsumercomments != null;

  // "Whatwerethefrequentlyaskedquestions" field.
  String? _whatwerethefrequentlyaskedquestions;
  String get whatwerethefrequentlyaskedquestions =>
      _whatwerethefrequentlyaskedquestions ?? '';
  bool hasWhatwerethefrequentlyaskedquestions() =>
      _whatwerethefrequentlyaskedquestions != null;

  // "Whatdoyousuggestweimproveforthefuture" field.
  String? _whatdoyousuggestweimproveforthefuture;
  String get whatdoyousuggestweimproveforthefuture =>
      _whatdoyousuggestweimproveforthefuture ?? '';
  bool hasWhatdoyousuggestweimproveforthefuture() =>
      _whatdoyousuggestweimproveforthefuture != null;

  // "Whatwhereyouroverallobservation" field.
  String? _whatwhereyouroverallobservation;
  String get whatwhereyouroverallobservation =>
      _whatwhereyouroverallobservation ?? '';
  bool hasWhatwhereyouroverallobservation() =>
      _whatwhereyouroverallobservation != null;

  // "Didyoureachtarget" field.
  String? _didyoureachtarget;
  String get didyoureachtarget => _didyoureachtarget ?? '';
  bool hasDidyoureachtarget() => _didyoureachtarget != null;

  // "Howmanyflyersdidyou" field.
  String? _howmanyflyersdidyou;
  String get howmanyflyersdidyou => _howmanyflyersdidyou ?? '';
  bool hasHowmanyflyersdidyou() => _howmanyflyersdidyou != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Totalworkedhour" field.
  double? _totalworkedhour;
  double get totalworkedhour => _totalworkedhour ?? 0.0;
  bool hasTotalworkedhour() => _totalworkedhour != null;

  // "PromCA" field.
  DocumentReference? _promCA;
  DocumentReference? get promCA => _promCA;
  bool hasPromCA() => _promCA != null;

  // "totalamount" field.
  double? _totalamount;
  double get totalamount => _totalamount ?? 0.0;
  bool hasTotalamount() => _totalamount != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _fullname = snapshotData['Fullname'] as String?;
    _location = snapshotData['Location'] as String?;
    _contactnumber = snapshotData['Contactnumber'] as String?;
    _noofstaffonstand = castToType<int>(snapshotData['Noofstaffonstand']);
    _whatisthemainpurposeoftheactivation =
        snapshotData['Whatisthemainpurposeoftheactivation'] as String?;
    _describethelayoutofthestandorthe =
        snapshotData['Describethelayoutofthestandorthe'] as String?;
    _whatarethepositiveconsumercomments =
        snapshotData['Whatarethepositiveconsumercomments'] as String?;
    _whatarethenegativeconsumercomments =
        snapshotData['Whatarethenegativeconsumercomments'] as String?;
    _whatwerethefrequentlyaskedquestions =
        snapshotData['Whatwerethefrequentlyaskedquestions'] as String?;
    _whatdoyousuggestweimproveforthefuture =
        snapshotData['Whatdoyousuggestweimproveforthefuture'] as String?;
    _whatwhereyouroverallobservation =
        snapshotData['Whatwhereyouroverallobservation'] as String?;
    _didyoureachtarget = snapshotData['Didyoureachtarget'] as String?;
    _howmanyflyersdidyou = snapshotData['Howmanyflyersdidyou'] as String?;
    _user = snapshotData['User'] as DocumentReference?;
    _totalworkedhour = castToType<double>(snapshotData['Totalworkedhour']);
    _promCA = snapshotData['PromCA'] as DocumentReference?;
    _totalamount = castToType<double>(snapshotData['totalamount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportRecord.fromSnapshot(s));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportRecord.fromSnapshot(s));

  static ReportRecord fromSnapshot(DocumentSnapshot snapshot) => ReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportRecordData({
  DateTime? date,
  String? fullname,
  String? location,
  String? contactnumber,
  int? noofstaffonstand,
  String? whatisthemainpurposeoftheactivation,
  String? describethelayoutofthestandorthe,
  String? whatarethepositiveconsumercomments,
  String? whatarethenegativeconsumercomments,
  String? whatwerethefrequentlyaskedquestions,
  String? whatdoyousuggestweimproveforthefuture,
  String? whatwhereyouroverallobservation,
  String? didyoureachtarget,
  String? howmanyflyersdidyou,
  DocumentReference? user,
  double? totalworkedhour,
  DocumentReference? promCA,
  double? totalamount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'Fullname': fullname,
      'Location': location,
      'Contactnumber': contactnumber,
      'Noofstaffonstand': noofstaffonstand,
      'Whatisthemainpurposeoftheactivation':
          whatisthemainpurposeoftheactivation,
      'Describethelayoutofthestandorthe': describethelayoutofthestandorthe,
      'Whatarethepositiveconsumercomments': whatarethepositiveconsumercomments,
      'Whatarethenegativeconsumercomments': whatarethenegativeconsumercomments,
      'Whatwerethefrequentlyaskedquestions':
          whatwerethefrequentlyaskedquestions,
      'Whatdoyousuggestweimproveforthefuture':
          whatdoyousuggestweimproveforthefuture,
      'Whatwhereyouroverallobservation': whatwhereyouroverallobservation,
      'Didyoureachtarget': didyoureachtarget,
      'Howmanyflyersdidyou': howmanyflyersdidyou,
      'User': user,
      'Totalworkedhour': totalworkedhour,
      'PromCA': promCA,
      'totalamount': totalamount,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportRecordDocumentEquality implements Equality<ReportRecord> {
  const ReportRecordDocumentEquality();

  @override
  bool equals(ReportRecord? e1, ReportRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.fullname == e2?.fullname &&
        e1?.location == e2?.location &&
        e1?.contactnumber == e2?.contactnumber &&
        e1?.noofstaffonstand == e2?.noofstaffonstand &&
        e1?.whatisthemainpurposeoftheactivation ==
            e2?.whatisthemainpurposeoftheactivation &&
        e1?.describethelayoutofthestandorthe ==
            e2?.describethelayoutofthestandorthe &&
        e1?.whatarethepositiveconsumercomments ==
            e2?.whatarethepositiveconsumercomments &&
        e1?.whatarethenegativeconsumercomments ==
            e2?.whatarethenegativeconsumercomments &&
        e1?.whatwerethefrequentlyaskedquestions ==
            e2?.whatwerethefrequentlyaskedquestions &&
        e1?.whatdoyousuggestweimproveforthefuture ==
            e2?.whatdoyousuggestweimproveforthefuture &&
        e1?.whatwhereyouroverallobservation ==
            e2?.whatwhereyouroverallobservation &&
        e1?.didyoureachtarget == e2?.didyoureachtarget &&
        e1?.howmanyflyersdidyou == e2?.howmanyflyersdidyou &&
        e1?.user == e2?.user &&
        e1?.totalworkedhour == e2?.totalworkedhour &&
        e1?.promCA == e2?.promCA &&
        e1?.totalamount == e2?.totalamount;
  }

  @override
  int hash(ReportRecord? e) => const ListEquality().hash([
        e?.date,
        e?.fullname,
        e?.location,
        e?.contactnumber,
        e?.noofstaffonstand,
        e?.whatisthemainpurposeoftheactivation,
        e?.describethelayoutofthestandorthe,
        e?.whatarethepositiveconsumercomments,
        e?.whatarethenegativeconsumercomments,
        e?.whatwerethefrequentlyaskedquestions,
        e?.whatdoyousuggestweimproveforthefuture,
        e?.whatwhereyouroverallobservation,
        e?.didyoureachtarget,
        e?.howmanyflyersdidyou,
        e?.user,
        e?.totalworkedhour,
        e?.promCA,
        e?.totalamount
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportRecord;
}

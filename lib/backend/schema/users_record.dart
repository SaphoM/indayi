import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Promotions" field.
  int? _promotions;
  int get promotions => _promotions ?? 0;
  bool hasPromotions() => _promotions != null;

  // "InstagramHandle" field.
  String? _instagramHandle;
  String get instagramHandle => _instagramHandle ?? '';
  bool hasInstagramHandle() => _instagramHandle != null;

  // "NameOfBank" field.
  String? _nameOfBank;
  String get nameOfBank => _nameOfBank ?? '';
  bool hasNameOfBank() => _nameOfBank != null;

  // "AccountHolder" field.
  String? _accountHolder;
  String get accountHolder => _accountHolder ?? '';
  bool hasAccountHolder() => _accountHolder != null;

  // "AccountNo" field.
  String? _accountNo;
  String get accountNo => _accountNo ?? '';
  bool hasAccountNo() => _accountNo != null;

  // "IdNo" field.
  String? _idNo;
  String get idNo => _idNo ?? '';
  bool hasIdNo() => _idNo != null;

  // "BranchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  bool hasBranchCode() => _branchCode != null;

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "Campus" field.
  String? _campus;
  String get campus => _campus ?? '';
  bool hasCampus() => _campus != null;

  // "Qualification" field.
  String? _qualification;
  String get qualification => _qualification ?? '';
  bool hasQualification() => _qualification != null;

  // "PromotionalExperience" field.
  String? _promotionalExperience;
  String get promotionalExperience => _promotionalExperience ?? '';
  bool hasPromotionalExperience() => _promotionalExperience != null;

  // "WhatMakeYouGreatBrand" field.
  String? _whatMakeYouGreatBrand;
  String get whatMakeYouGreatBrand => _whatMakeYouGreatBrand ?? '';
  bool hasWhatMakeYouGreatBrand() => _whatMakeYouGreatBrand != null;

  // "InterestedPromoter" field.
  bool? _interestedPromoter;
  bool get interestedPromoter => _interestedPromoter ?? false;
  bool hasInterestedPromoter() => _interestedPromoter != null;

  // "Specialtalents" field.
  String? _specialtalents;
  String get specialtalents => _specialtalents ?? '';
  bool hasSpecialtalents() => _specialtalents != null;

  // "Availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  bool hasAvailability() => _availability != null;

  // "DriversLicence" field.
  String? _driversLicence;
  String get driversLicence => _driversLicence ?? '';
  bool hasDriversLicence() => _driversLicence != null;

  // "OwnVehicle" field.
  String? _ownVehicle;
  String get ownVehicle => _ownVehicle ?? '';
  bool hasOwnVehicle() => _ownVehicle != null;

  // "Twitterhandle" field.
  String? _twitterhandle;
  String get twitterhandle => _twitterhandle ?? '';
  bool hasTwitterhandle() => _twitterhandle != null;

  // "Facebookname" field.
  String? _facebookname;
  String get facebookname => _facebookname ?? '';
  bool hasFacebookname() => _facebookname != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "BasicProfile" field.
  String? _basicProfile;
  String get basicProfile => _basicProfile ?? '';
  bool hasBasicProfile() => _basicProfile != null;

  // "Surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "KnownAs" field.
  String? _knownAs;
  String get knownAs => _knownAs ?? '';
  bool hasKnownAs() => _knownAs != null;

  // "Cellphone" field.
  String? _cellphone;
  String get cellphone => _cellphone ?? '';
  bool hasCellphone() => _cellphone != null;

  // "Age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "Ethnicity" field.
  String? _ethnicity;
  String get ethnicity => _ethnicity ?? '';
  bool hasEthnicity() => _ethnicity != null;

  // "ShirtSize" field.
  String? _shirtSize;
  String get shirtSize => _shirtSize ?? '';
  bool hasShirtSize() => _shirtSize != null;

  // "WaistSize" field.
  String? _waistSize;
  String get waistSize => _waistSize ?? '';
  bool hasWaistSize() => _waistSize != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Amountdue" field.
  double? _amountdue;
  double get amountdue => _amountdue ?? 0.0;
  bool hasAmountdue() => _amountdue != null;

  // "Promotionexperience" field.
  String? _promotionexperience;
  String get promotionexperience => _promotionexperience ?? '';
  bool hasPromotionexperience() => _promotionexperience != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "UserType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "CampaignList" field.
  List<String>? _campaignList;
  List<String> get campaignList => _campaignList ?? const [];
  bool hasCampaignList() => _campaignList != null;

  // "Accept" field.
  bool? _accept;
  bool get accept => _accept ?? false;
  bool hasAccept() => _accept != null;

  // "Products" field.
  List<String>? _products;
  List<String> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "ShirtSQ" field.
  String? _shirtSQ;
  String get shirtSQ => _shirtSQ ?? '';
  bool hasShirtSQ() => _shirtSQ != null;

  // "NextofKinName" field.
  String? _nextofKinName;
  String get nextofKinName => _nextofKinName ?? '';
  bool hasNextofKinName() => _nextofKinName != null;

  // "NextofKinSurname" field.
  String? _nextofKinSurname;
  String get nextofKinSurname => _nextofKinSurname ?? '';
  bool hasNextofKinSurname() => _nextofKinSurname != null;

  // "NextofKinPhone1" field.
  String? _nextofKinPhone1;
  String get nextofKinPhone1 => _nextofKinPhone1 ?? '';
  bool hasNextofKinPhone1() => _nextofKinPhone1 != null;

  // "NextofKinPhone2" field.
  String? _nextofKinPhone2;
  String get nextofKinPhone2 => _nextofKinPhone2 ?? '';
  bool hasNextofKinPhone2() => _nextofKinPhone2 != null;

  // "NextofKinEmail" field.
  String? _nextofKinEmail;
  String get nextofKinEmail => _nextofKinEmail ?? '';
  bool hasNextofKinEmail() => _nextofKinEmail != null;

  // "Photo_FullPicture" field.
  String? _photoFullPicture;
  String get photoFullPicture => _photoFullPicture ?? '';
  bool hasPhotoFullPicture() => _photoFullPicture != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _promotions = castToType<int>(snapshotData['Promotions']);
    _instagramHandle = snapshotData['InstagramHandle'] as String?;
    _nameOfBank = snapshotData['NameOfBank'] as String?;
    _accountHolder = snapshotData['AccountHolder'] as String?;
    _accountNo = snapshotData['AccountNo'] as String?;
    _idNo = snapshotData['IdNo'] as String?;
    _branchCode = snapshotData['BranchCode'] as String?;
    _language = snapshotData['Language'] as String?;
    _campus = snapshotData['Campus'] as String?;
    _qualification = snapshotData['Qualification'] as String?;
    _promotionalExperience = snapshotData['PromotionalExperience'] as String?;
    _whatMakeYouGreatBrand = snapshotData['WhatMakeYouGreatBrand'] as String?;
    _interestedPromoter = snapshotData['InterestedPromoter'] as bool?;
    _specialtalents = snapshotData['Specialtalents'] as String?;
    _availability = snapshotData['Availability'] as String?;
    _driversLicence = snapshotData['DriversLicence'] as String?;
    _ownVehicle = snapshotData['OwnVehicle'] as String?;
    _twitterhandle = snapshotData['Twitterhandle'] as String?;
    _facebookname = snapshotData['Facebookname'] as String?;
    _name = snapshotData['Name'] as String?;
    _basicProfile = snapshotData['BasicProfile'] as String?;
    _surname = snapshotData['Surname'] as String?;
    _knownAs = snapshotData['KnownAs'] as String?;
    _cellphone = snapshotData['Cellphone'] as String?;
    _age = snapshotData['Age'] as String?;
    _gender = snapshotData['Gender'] as String?;
    _ethnicity = snapshotData['Ethnicity'] as String?;
    _shirtSize = snapshotData['ShirtSize'] as String?;
    _waistSize = snapshotData['WaistSize'] as String?;
    _region = snapshotData['Region'] as String?;
    _city = snapshotData['City'] as String?;
    _amountdue = castToType<double>(snapshotData['Amountdue']);
    _promotionexperience = snapshotData['Promotionexperience'] as String?;
    _rate = castToType<double>(snapshotData['Rate']);
    _userType = snapshotData['UserType'] as String?;
    _campaignList = getDataList(snapshotData['CampaignList']);
    _accept = snapshotData['Accept'] as bool?;
    _products = getDataList(snapshotData['Products']);
    _location = snapshotData['Location'] as String?;
    _shirtSQ = snapshotData['ShirtSQ'] as String?;
    _nextofKinName = snapshotData['NextofKinName'] as String?;
    _nextofKinSurname = snapshotData['NextofKinSurname'] as String?;
    _nextofKinPhone1 = snapshotData['NextofKinPhone1'] as String?;
    _nextofKinPhone2 = snapshotData['NextofKinPhone2'] as String?;
    _nextofKinEmail = snapshotData['NextofKinEmail'] as String?;
    _photoFullPicture = snapshotData['Photo_FullPicture'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? promotions,
  String? instagramHandle,
  String? nameOfBank,
  String? accountHolder,
  String? accountNo,
  String? idNo,
  String? branchCode,
  String? language,
  String? campus,
  String? qualification,
  String? promotionalExperience,
  String? whatMakeYouGreatBrand,
  bool? interestedPromoter,
  String? specialtalents,
  String? availability,
  String? driversLicence,
  String? ownVehicle,
  String? twitterhandle,
  String? facebookname,
  String? name,
  String? basicProfile,
  String? surname,
  String? knownAs,
  String? cellphone,
  String? age,
  String? gender,
  String? ethnicity,
  String? shirtSize,
  String? waistSize,
  String? region,
  String? city,
  double? amountdue,
  String? promotionexperience,
  double? rate,
  String? userType,
  bool? accept,
  String? location,
  String? shirtSQ,
  String? nextofKinName,
  String? nextofKinSurname,
  String? nextofKinPhone1,
  String? nextofKinPhone2,
  String? nextofKinEmail,
  String? photoFullPicture,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Promotions': promotions,
      'InstagramHandle': instagramHandle,
      'NameOfBank': nameOfBank,
      'AccountHolder': accountHolder,
      'AccountNo': accountNo,
      'IdNo': idNo,
      'BranchCode': branchCode,
      'Language': language,
      'Campus': campus,
      'Qualification': qualification,
      'PromotionalExperience': promotionalExperience,
      'WhatMakeYouGreatBrand': whatMakeYouGreatBrand,
      'InterestedPromoter': interestedPromoter,
      'Specialtalents': specialtalents,
      'Availability': availability,
      'DriversLicence': driversLicence,
      'OwnVehicle': ownVehicle,
      'Twitterhandle': twitterhandle,
      'Facebookname': facebookname,
      'Name': name,
      'BasicProfile': basicProfile,
      'Surname': surname,
      'KnownAs': knownAs,
      'Cellphone': cellphone,
      'Age': age,
      'Gender': gender,
      'Ethnicity': ethnicity,
      'ShirtSize': shirtSize,
      'WaistSize': waistSize,
      'Region': region,
      'City': city,
      'Amountdue': amountdue,
      'Promotionexperience': promotionexperience,
      'Rate': rate,
      'UserType': userType,
      'Accept': accept,
      'Location': location,
      'ShirtSQ': shirtSQ,
      'NextofKinName': nextofKinName,
      'NextofKinSurname': nextofKinSurname,
      'NextofKinPhone1': nextofKinPhone1,
      'NextofKinPhone2': nextofKinPhone2,
      'NextofKinEmail': nextofKinEmail,
      'Photo_FullPicture': photoFullPicture,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.promotions == e2?.promotions &&
        e1?.instagramHandle == e2?.instagramHandle &&
        e1?.nameOfBank == e2?.nameOfBank &&
        e1?.accountHolder == e2?.accountHolder &&
        e1?.accountNo == e2?.accountNo &&
        e1?.idNo == e2?.idNo &&
        e1?.branchCode == e2?.branchCode &&
        e1?.language == e2?.language &&
        e1?.campus == e2?.campus &&
        e1?.qualification == e2?.qualification &&
        e1?.promotionalExperience == e2?.promotionalExperience &&
        e1?.whatMakeYouGreatBrand == e2?.whatMakeYouGreatBrand &&
        e1?.interestedPromoter == e2?.interestedPromoter &&
        e1?.specialtalents == e2?.specialtalents &&
        e1?.availability == e2?.availability &&
        e1?.driversLicence == e2?.driversLicence &&
        e1?.ownVehicle == e2?.ownVehicle &&
        e1?.twitterhandle == e2?.twitterhandle &&
        e1?.facebookname == e2?.facebookname &&
        e1?.name == e2?.name &&
        e1?.basicProfile == e2?.basicProfile &&
        e1?.surname == e2?.surname &&
        e1?.knownAs == e2?.knownAs &&
        e1?.cellphone == e2?.cellphone &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.ethnicity == e2?.ethnicity &&
        e1?.shirtSize == e2?.shirtSize &&
        e1?.waistSize == e2?.waistSize &&
        e1?.region == e2?.region &&
        e1?.city == e2?.city &&
        e1?.amountdue == e2?.amountdue &&
        e1?.promotionexperience == e2?.promotionexperience &&
        e1?.rate == e2?.rate &&
        e1?.userType == e2?.userType &&
        listEquality.equals(e1?.campaignList, e2?.campaignList) &&
        e1?.accept == e2?.accept &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.location == e2?.location &&
        e1?.shirtSQ == e2?.shirtSQ &&
        e1?.nextofKinName == e2?.nextofKinName &&
        e1?.nextofKinSurname == e2?.nextofKinSurname &&
        e1?.nextofKinPhone1 == e2?.nextofKinPhone1 &&
        e1?.nextofKinPhone2 == e2?.nextofKinPhone2 &&
        e1?.nextofKinEmail == e2?.nextofKinEmail &&
        e1?.photoFullPicture == e2?.photoFullPicture;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.promotions,
        e?.instagramHandle,
        e?.nameOfBank,
        e?.accountHolder,
        e?.accountNo,
        e?.idNo,
        e?.branchCode,
        e?.language,
        e?.campus,
        e?.qualification,
        e?.promotionalExperience,
        e?.whatMakeYouGreatBrand,
        e?.interestedPromoter,
        e?.specialtalents,
        e?.availability,
        e?.driversLicence,
        e?.ownVehicle,
        e?.twitterhandle,
        e?.facebookname,
        e?.name,
        e?.basicProfile,
        e?.surname,
        e?.knownAs,
        e?.cellphone,
        e?.age,
        e?.gender,
        e?.ethnicity,
        e?.shirtSize,
        e?.waistSize,
        e?.region,
        e?.city,
        e?.amountdue,
        e?.promotionexperience,
        e?.rate,
        e?.userType,
        e?.campaignList,
        e?.accept,
        e?.products,
        e?.location,
        e?.shirtSQ,
        e?.nextofKinName,
        e?.nextofKinSurname,
        e?.nextofKinPhone1,
        e?.nextofKinPhone2,
        e?.nextofKinEmail,
        e?.photoFullPicture
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

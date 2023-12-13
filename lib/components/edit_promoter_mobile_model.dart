import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'edit_promoter_mobile_widget.dart' show EditPromoterMobileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPromoterMobileModel
    extends FlutterFlowModel<EditPromoterMobileWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for FirstNameInput widget.
  FocusNode? firstNameInputFocusNode;
  TextEditingController? firstNameInputController;
  String? Function(BuildContext, String?)? firstNameInputControllerValidator;
  // State field(s) for LastNameInput widget.
  FocusNode? lastNameInputFocusNode;
  TextEditingController? lastNameInputController;
  String? Function(BuildContext, String?)? lastNameInputControllerValidator;
  // State field(s) for KnownAs widget.
  FocusNode? knownAsFocusNode;
  TextEditingController? knownAsController;
  String? Function(BuildContext, String?)? knownAsControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for CellphoneNo widget.
  FocusNode? cellphoneNoFocusNode;
  TextEditingController? cellphoneNoController;
  String? Function(BuildContext, String?)? cellphoneNoControllerValidator;
  // State field(s) for IDNo widget.
  FocusNode? iDNoFocusNode;
  TextEditingController? iDNoController;
  String? Function(BuildContext, String?)? iDNoControllerValidator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  // State field(s) for Gender widget.
  FocusNode? genderFocusNode;
  TextEditingController? genderController;
  String? Function(BuildContext, String?)? genderControllerValidator;
  // State field(s) for Ethnicity widget.
  FocusNode? ethnicityFocusNode;
  TextEditingController? ethnicityController;
  String? Function(BuildContext, String?)? ethnicityControllerValidator;
  // State field(s) for DropDownshirtsize widget.
  String? dropDownshirtsizeValue;
  FormFieldController<String>? dropDownshirtsizeValueController;
  // State field(s) for DropDownwaistsize widget.
  String? dropDownwaistsizeValue;
  FormFieldController<String>? dropDownwaistsizeValueController;
  // State field(s) for Region widget.
  FocusNode? regionFocusNode;
  TextEditingController? regionController;
  String? Function(BuildContext, String?)? regionControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for Language widget.
  FocusNode? languageFocusNode;
  TextEditingController? languageController;
  String? Function(BuildContext, String?)? languageControllerValidator;
  // State field(s) for Campus widget.
  FocusNode? campusFocusNode;
  TextEditingController? campusController;
  String? Function(BuildContext, String?)? campusControllerValidator;
  // State field(s) for Qualification widget.
  FocusNode? qualificationFocusNode;
  TextEditingController? qualificationController;
  String? Function(BuildContext, String?)? qualificationControllerValidator;
  // State field(s) for Availability widget.
  FocusNode? availabilityFocusNode;
  TextEditingController? availabilityController;
  String? Function(BuildContext, String?)? availabilityControllerValidator;
  // State field(s) for DriversLicense widget.
  FocusNode? driversLicenseFocusNode;
  TextEditingController? driversLicenseController;
  String? Function(BuildContext, String?)? driversLicenseControllerValidator;
  // State field(s) for OwnVehicle widget.
  FocusNode? ownVehicleFocusNode;
  TextEditingController? ownVehicleController;
  String? Function(BuildContext, String?)? ownVehicleControllerValidator;
  // State field(s) for TwitterHandle widget.
  FocusNode? twitterHandleFocusNode;
  TextEditingController? twitterHandleController;
  String? Function(BuildContext, String?)? twitterHandleControllerValidator;
  // State field(s) for FacebookName widget.
  FocusNode? facebookNameFocusNode;
  TextEditingController? facebookNameController;
  String? Function(BuildContext, String?)? facebookNameControllerValidator;
  // State field(s) for InstagramHandle widget.
  FocusNode? instagramHandleFocusNode;
  TextEditingController? instagramHandleController;
  String? Function(BuildContext, String?)? instagramHandleControllerValidator;
  // State field(s) for PromotionalExperience widget.
  FocusNode? promotionalExperienceFocusNode;
  TextEditingController? promotionalExperienceController;
  String? Function(BuildContext, String?)?
      promotionalExperienceControllerValidator;
  // State field(s) for WhatMakesYouGreatAmbassordor widget.
  FocusNode? whatMakesYouGreatAmbassordorFocusNode;
  TextEditingController? whatMakesYouGreatAmbassordorController;
  String? Function(BuildContext, String?)?
      whatMakesYouGreatAmbassordorControllerValidator;
  // State field(s) for SpecialTalents widget.
  FocusNode? specialTalentsFocusNode;
  TextEditingController? specialTalentsController;
  String? Function(BuildContext, String?)? specialTalentsControllerValidator;
  // State field(s) for ProfileBio widget.
  FocusNode? profileBioFocusNode;
  TextEditingController? profileBioController;
  String? Function(BuildContext, String?)? profileBioControllerValidator;
  // State field(s) for NextOfKinName widget.
  FocusNode? nextOfKinNameFocusNode;
  TextEditingController? nextOfKinNameController;
  String? Function(BuildContext, String?)? nextOfKinNameControllerValidator;
  // State field(s) for NextOfKinSurname widget.
  FocusNode? nextOfKinSurnameFocusNode;
  TextEditingController? nextOfKinSurnameController;
  String? Function(BuildContext, String?)? nextOfKinSurnameControllerValidator;
  // State field(s) for NextOfKinCell1 widget.
  FocusNode? nextOfKinCell1FocusNode;
  TextEditingController? nextOfKinCell1Controller;
  String? Function(BuildContext, String?)? nextOfKinCell1ControllerValidator;
  // State field(s) for NextOfKinCell2 widget.
  FocusNode? nextOfKinCell2FocusNode;
  TextEditingController? nextOfKinCell2Controller;
  String? Function(BuildContext, String?)? nextOfKinCell2ControllerValidator;
  // State field(s) for NextOfKinEmail widget.
  FocusNode? nextOfKinEmailFocusNode;
  TextEditingController? nextOfKinEmailController;
  String? Function(BuildContext, String?)? nextOfKinEmailControllerValidator;
  // State field(s) for BankNameInput widget.
  FocusNode? bankNameInputFocusNode;
  TextEditingController? bankNameInputController;
  String? Function(BuildContext, String?)? bankNameInputControllerValidator;
  // State field(s) for AccountHolderInput widget.
  FocusNode? accountHolderInputFocusNode;
  TextEditingController? accountHolderInputController;
  String? Function(BuildContext, String?)?
      accountHolderInputControllerValidator;
  // State field(s) for AccountNoInput widget.
  FocusNode? accountNoInputFocusNode;
  TextEditingController? accountNoInputController;
  String? Function(BuildContext, String?)? accountNoInputControllerValidator;
  // State field(s) for BranchCode widget.
  FocusNode? branchCodeFocusNode;
  TextEditingController? branchCodeController;
  String? Function(BuildContext, String?)? branchCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    firstNameInputFocusNode?.dispose();
    firstNameInputController?.dispose();

    lastNameInputFocusNode?.dispose();
    lastNameInputController?.dispose();

    knownAsFocusNode?.dispose();
    knownAsController?.dispose();

    locationFocusNode?.dispose();
    locationController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    cellphoneNoFocusNode?.dispose();
    cellphoneNoController?.dispose();

    iDNoFocusNode?.dispose();
    iDNoController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();

    genderFocusNode?.dispose();
    genderController?.dispose();

    ethnicityFocusNode?.dispose();
    ethnicityController?.dispose();

    regionFocusNode?.dispose();
    regionController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    languageFocusNode?.dispose();
    languageController?.dispose();

    campusFocusNode?.dispose();
    campusController?.dispose();

    qualificationFocusNode?.dispose();
    qualificationController?.dispose();

    availabilityFocusNode?.dispose();
    availabilityController?.dispose();

    driversLicenseFocusNode?.dispose();
    driversLicenseController?.dispose();

    ownVehicleFocusNode?.dispose();
    ownVehicleController?.dispose();

    twitterHandleFocusNode?.dispose();
    twitterHandleController?.dispose();

    facebookNameFocusNode?.dispose();
    facebookNameController?.dispose();

    instagramHandleFocusNode?.dispose();
    instagramHandleController?.dispose();

    promotionalExperienceFocusNode?.dispose();
    promotionalExperienceController?.dispose();

    whatMakesYouGreatAmbassordorFocusNode?.dispose();
    whatMakesYouGreatAmbassordorController?.dispose();

    specialTalentsFocusNode?.dispose();
    specialTalentsController?.dispose();

    profileBioFocusNode?.dispose();
    profileBioController?.dispose();

    nextOfKinNameFocusNode?.dispose();
    nextOfKinNameController?.dispose();

    nextOfKinSurnameFocusNode?.dispose();
    nextOfKinSurnameController?.dispose();

    nextOfKinCell1FocusNode?.dispose();
    nextOfKinCell1Controller?.dispose();

    nextOfKinCell2FocusNode?.dispose();
    nextOfKinCell2Controller?.dispose();

    nextOfKinEmailFocusNode?.dispose();
    nextOfKinEmailController?.dispose();

    bankNameInputFocusNode?.dispose();
    bankNameInputController?.dispose();

    accountHolderInputFocusNode?.dispose();
    accountHolderInputController?.dispose();

    accountNoInputFocusNode?.dispose();
    accountNoInputController?.dispose();

    branchCodeFocusNode?.dispose();
    branchCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

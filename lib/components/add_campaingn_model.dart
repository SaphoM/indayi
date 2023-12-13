import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'add_campaingn_widget.dart' show AddCampaingnWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AddCampaingnModel extends FlutterFlowModel<AddCampaingnWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for DropDownclient widget.
  String? dropDownclientValue;
  FormFieldController<String>? dropDownclientValueController;
  // State field(s) for CampainTitle widget.
  FocusNode? campainTitleFocusNode;
  TextEditingController? campainTitleController;
  String? Function(BuildContext, String?)? campainTitleControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextValue widget.
  FocusNode? textValueFocusNode;
  TextEditingController? textValueController;
  String? Function(BuildContext, String?)? textValueControllerValidator;
  // State field(s) for TextLocation widget.
  FocusNode? textLocationFocusNode;
  TextEditingController? textLocationController;
  String? Function(BuildContext, String?)? textLocationControllerValidator;
  // State field(s) for PlaceInput widget.
  FocusNode? placeInputFocusNode;
  TextEditingController? placeInputController;
  String? Function(BuildContext, String?)? placeInputControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (SendGridEmail)] action in Button widget.
  ApiCallResponse? sendEmailResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    campainTitleFocusNode?.dispose();
    campainTitleController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    textValueFocusNode?.dispose();
    textValueController?.dispose();

    textLocationFocusNode?.dispose();
    textLocationController?.dispose();

    placeInputFocusNode?.dispose();
    placeInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

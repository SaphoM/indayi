import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'add_client_widget.dart' show AddClientWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AddClientModel extends FlutterFlowModel<AddClientWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for ClientCompanyName widget.
  FocusNode? clientCompanyNameFocusNode;
  TextEditingController? clientCompanyNameController;
  String? Function(BuildContext, String?)? clientCompanyNameControllerValidator;
  // State field(s) for Clientfirstlastname widget.
  FocusNode? clientfirstlastnameFocusNode;
  TextEditingController? clientfirstlastnameController;
  String? Function(BuildContext, String?)?
      clientfirstlastnameControllerValidator;
  // State field(s) for ClientEmail widget.
  FocusNode? clientEmailFocusNode;
  TextEditingController? clientEmailController;
  String? Function(BuildContext, String?)? clientEmailControllerValidator;
  // State field(s) for TelephoneNo widget.
  FocusNode? telephoneNoFocusNode;
  TextEditingController? telephoneNoController;
  String? Function(BuildContext, String?)? telephoneNoControllerValidator;
  // State field(s) for EmainlAddress widget.
  FocusNode? emainlAddressFocusNode;
  TextEditingController? emainlAddressController;
  String? Function(BuildContext, String?)? emainlAddressControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for Notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    clientCompanyNameFocusNode?.dispose();
    clientCompanyNameController?.dispose();

    clientfirstlastnameFocusNode?.dispose();
    clientfirstlastnameController?.dispose();

    clientEmailFocusNode?.dispose();
    clientEmailController?.dispose();

    telephoneNoFocusNode?.dispose();
    telephoneNoController?.dispose();

    emainlAddressFocusNode?.dispose();
    emainlAddressController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    notesFocusNode?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

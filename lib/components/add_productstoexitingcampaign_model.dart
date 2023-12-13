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
import 'add_productstoexitingcampaign_widget.dart'
    show AddProductstoexitingcampaignWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AddProductstoexitingcampaignModel
    extends FlutterFlowModel<AddProductstoexitingcampaignWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ProductDescription widget.
  FocusNode? productDescriptionFocusNode;
  TextEditingController? productDescriptionController;
  String? Function(BuildContext, String?)?
      productDescriptionControllerValidator;
  // State field(s) for ProdcutType widget.
  FocusNode? prodcutTypeFocusNode;
  TextEditingController? prodcutTypeController;
  String? Function(BuildContext, String?)? prodcutTypeControllerValidator;
  // State field(s) for DropdownSelectCampaignKind widget.
  String? dropdownSelectCampaignKindValue;
  FormFieldController<String>? dropdownSelectCampaignKindValueController;
  // State field(s) for ClientNameInput widget.
  FocusNode? clientNameInputFocusNode;
  TextEditingController? clientNameInputController;
  String? Function(BuildContext, String?)? clientNameInputControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    productDescriptionFocusNode?.dispose();
    productDescriptionController?.dispose();

    prodcutTypeFocusNode?.dispose();
    prodcutTypeController?.dispose();

    clientNameInputFocusNode?.dispose();
    clientNameInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

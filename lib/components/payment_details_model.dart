import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/list_of_promotions_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_details_widget.dart' show PaymentDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentDetailsModel extends FlutterFlowModel<PaymentDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    amountFocusNode?.dispose();
    amountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

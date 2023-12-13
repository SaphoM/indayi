import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ratepromoter_widget.dart' show RatepromoterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RatepromoterModel extends FlutterFlowModel<RatepromoterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Ratings widget.
  FocusNode? ratingsFocusNode;
  TextEditingController? ratingsController;
  String? Function(BuildContext, String?)? ratingsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    ratingsFocusNode?.dispose();
    ratingsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

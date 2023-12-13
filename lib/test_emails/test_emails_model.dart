import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'test_emails_widget.dart' show TestEmailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestEmailsModel extends FlutterFlowModel<TestEmailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectController;
  String? Function(BuildContext, String?)? subjectControllerValidator;
  // State field(s) for Content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // Stores action output result for [Backend Call - API (SendGridEmail)] action in Button widget.
  ApiCallResponse? emailsendResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    subjectFocusNode?.dispose();
    subjectController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

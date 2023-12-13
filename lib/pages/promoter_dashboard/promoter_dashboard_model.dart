import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_promoter_widget.dart';
import '/components/interested_promoter_list_widget.dart';
import '/components/invite_promoter_widget.dart';
import '/components/link_promoter_widget.dart';
import '/components/list_of_promotions_widget.dart';
import '/components/profile_widget.dart';
import '/components/userlist_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'promoter_dashboard_widget.dart' show PromoterDashboardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PromoterDashboardModel extends FlutterFlowModel<PromoterDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropGender widget.
  String? dropGenderValue;
  FormFieldController<String>? dropGenderValueController;
  // State field(s) for DropAge widget.
  String? dropAgeValue;
  FormFieldController<String>? dropAgeValueController;
  // State field(s) for DropEthnicity widget.
  String? dropEthnicityValue;
  FormFieldController<String>? dropEthnicityValueController;
  // State field(s) for DropSize widget.
  String? dropSizeValue;
  FormFieldController<String>? dropSizeValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

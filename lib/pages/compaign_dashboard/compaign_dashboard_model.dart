import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/add_campaingn_widget.dart';
import '/components/add_client_widget.dart';
import '/components/add_product_widget.dart';
import '/components/add_productstoexitingcampaign_widget.dart';
import '/components/client_list_widget.dart';
import '/components/delink_promoter_widget.dart';
import '/components/edit_campaingn_widget.dart';
import '/components/invite_manager_widget.dart';
import '/components/linkuser_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'compaign_dashboard_widget.dart' show CompaignDashboardWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompaignDashboardModel extends FlutterFlowModel<CompaignDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

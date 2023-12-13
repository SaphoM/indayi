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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'promoter_dashboard_model.dart';
export 'promoter_dashboard_model.dart';

class PromoterDashboardWidget extends StatefulWidget {
  const PromoterDashboardWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _PromoterDashboardWidgetState createState() =>
      _PromoterDashboardWidgetState();
}

class _PromoterDashboardWidgetState extends State<PromoterDashboardWidget> {
  late PromoterDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromoterDashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/2023-10-20_14.03.42.png',
                                  width: 250.0,
                                  height: 104.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.pushNamedAuth(
                                      'HomePage', context.mounted);
                                },
                                text: 'logout',
                                options: FFButtonOptions(
                                  width: 250.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFF2F2F2),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: 1392.0,
                              height: 515.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.26),
                                      child: Container(
                                        width: 837.0,
                                        height: 200.0,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'PROMOTER MANGEMENT DASHBOARD',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF14181B),
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Text(
                                                'This Promoter Management Dashboard, is your central hub for optimizing marketing strategies, tracking campaign performance, and efficiently managing your team of promoters and brand ambassadors. With real-time data, comprehensive analytics, and powerful tools at your fingertips, this dashboard empowers you to make informed decisions, drive customer engagement, and maximize ROI while streamlining the coordination and performance of your promoters and brand ambassadors. Discover the key to achieving your promotional objectives and ensuring your brand\'s growth in today\'s dynamic marketplace.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.99, -1.11),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Text(
                                          'Promotions \nManagament \nSystems (PMS)',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                                fontSize: 45.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.76),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 16.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            InvitePromoterWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              text: 'Invite Promoter',
                                              options: FFButtonOptions(
                                                width: 250.0,
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF461286),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 16.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                    'CompaignDashboard');
                                              },
                                              text: 'Campaigns',
                                              options: FFButtonOptions(
                                                width: 250.0,
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF461286),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                          AlignedTooltip(
                                            content: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 4.0, 4.0, 4.0),
                                                child: Text(
                                                  'List of Users',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                )),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.down,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor: Colors.white,
                                            elevation: 4.0,
                                            tailBaseWidth: 24.0,
                                            tailLength: 12.0,
                                            waitDuration:
                                                Duration(milliseconds: 50),
                                            showDuration:
                                                Duration(milliseconds: 1000),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 16.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              UserlistWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.person_add_alt,
                                                  color: Color(0xFF461286),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AlignedTooltip(
                                            content: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 4.0, 4.0, 4.0),
                                                child: Text(
                                                  'List of Interested Promoters',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                )),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.up,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor: Colors.white,
                                            elevation: 4.0,
                                            tailBaseWidth: 24.0,
                                            tailLength: 12.0,
                                            waitDuration:
                                                Duration(milliseconds: 50),
                                            showDuration:
                                                Duration(milliseconds: 1000),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 16.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              InterestedPromoterListWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.post_add,
                                                  color: Color(0xFF461286),
                                                  size: 30.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          AlignedTooltip(
                                            content: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 4.0, 4.0, 4.0),
                                                child: Text(
                                                  'Admin Dashboard',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                )),
                                            offset: 4.0,
                                            preferredDirection:
                                                AxisDirection.right,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            backgroundColor: Colors.white,
                                            elevation: 4.0,
                                            tailBaseWidth: 24.0,
                                            tailLength: 12.0,
                                            waitDuration:
                                                Duration(milliseconds: 50),
                                            showDuration:
                                                Duration(milliseconds: 1000),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    'NotificationsAdmin');
                                              },
                                              child: Icon(
                                                Icons.dashboard_customize_sharp,
                                                color: Color(0xFF461286),
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.99, 0.00),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/INDAYI_Image_PNG_[2]-1.png',
                                          width: 500.0,
                                          height: 532.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Container(
                            width: 1250.0,
                            height: 52.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.05, 0.00),
                                  child: Container(
                                    width: 780.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: 142.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropGenderValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    'All',
                                                    'Male',
                                                    'Female'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropGenderValue =
                                                          val),
                                                  width: 0.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                  hintText: 'Gender',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Color(0xFFF2F2F2),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0xFFE0E3E7),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: 142.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropAgeValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    '16\'s',
                                                    '20\'s',
                                                    '30\'s',
                                                    '40\'s'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                          .dropAgeValue = val),
                                                  width: 0.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                  hintText: 'Age',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Color(0xFFF2F2F2),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0xFFE0E3E7),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: 142.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropEthnicityValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    'African',
                                                    'White',
                                                    'Indian'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropEthnicityValue =
                                                          val),
                                                  width: 0.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                  hintText: 'Ethnicity',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Color(0xFFF2F2F2),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0xFFE0E3E7),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: 142.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropSizeValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    '26',
                                                    '28',
                                                    '30',
                                                    '32',
                                                    '34',
                                                    '36',
                                                    '38',
                                                    '40',
                                                    '42',
                                                    '44',
                                                    '46',
                                                    '48',
                                                    '50'
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                          .dropSizeValue = val),
                                                  width: 0.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                  hintText: 'Shirt  Size',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Color(0xFFF2F2F2),
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0xFFE0E3E7),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (_model.dropAgeValue != null &&
                                        _model.dropAgeValue != ''
                                    ? true
                                    : false)
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.69, -1.31),
                                    child: Container(
                                      width: 60.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Text(
                                          'Age',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF8C8C90),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (_model.dropGenderValue != null &&
                                        _model.dropGenderValue != ''
                                    ? true
                                    : false)
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.99, -1.40),
                                    child: Container(
                                      width: 60.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                      ),
                                      child: Text(
                                        'Gender',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF8C8C90),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (_model.dropSizeValue != null &&
                                        _model.dropSizeValue != ''
                                    ? true
                                    : false)
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.02, -1.38),
                                    child: Container(
                                      width: 80.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                      ),
                                      child: Text(
                                        'Shirt Size',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF8C8C90),
                                            ),
                                      ),
                                    ),
                                  ),
                                if (_model.dropEthnicityValue != null &&
                                        _model.dropEthnicityValue != ''
                                    ? true
                                    : false)
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.35, -1.35),
                                    child: Container(
                                      width: 60.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                      ),
                                      child: Text(
                                        'Ethnicity',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF8C8C90),
                                            ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 1259.0,
                          height: 650.0,
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: StreamBuilder<List<UsersRecord>>(
                            stream: queryUsersRecord(
                              queryBuilder: (usersRecord) => usersRecord
                                  .where(
                                    'Accept',
                                    isEqualTo: true,
                                  )
                                  .where(
                                    'Gender',
                                    isEqualTo: _model.dropGenderValue,
                                  )
                                  .where(
                                    'Age',
                                    isLessThanOrEqualTo: _model.dropAgeValue,
                                  )
                                  .where(
                                    'Ethnicity',
                                    isEqualTo: _model.dropEthnicityValue,
                                  )
                                  .where(
                                    'ShirtSQ',
                                    isEqualTo: _model.dropSizeValue,
                                  )
                                  .where(
                                    'UserType',
                                    isEqualTo: 'Promoter',
                                  ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<UsersRecord> gridViewUsersRecordList =
                                  snapshot.data!;
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 1.0,
                                  mainAxisSpacing: 1.0,
                                  childAspectRatio: 0.78,
                                ),
                                scrollDirection: Axis.vertical,
                                itemCount: gridViewUsersRecordList.length,
                                itemBuilder: (context, gridViewIndex) {
                                  final gridViewUsersRecord =
                                      gridViewUsersRecordList[gridViewIndex];
                                  return Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: ProfileWidget(
                                                      user: gridViewUsersRecord
                                                          .reference,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                gridViewUsersRecord.photoUrl,
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRohLKaNeBMKms5Zz4jbuWxHGkc4Uzx5xycYHhd5H3BAlv8QbCak7lsEuxRkCJ1EywrZDo&usqp=CAU',
                                              ),
                                              width: 352.0,
                                              height: 580.0,
                                              fit: BoxFit.cover,
                                              errorBuilder: (context, error,
                                                      stackTrace) =>
                                                  Image.asset(
                                                'assets/images/error_image.jpg',
                                                width: 352.0,
                                                height: 580.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.29),
                                        child: Container(
                                          width: double.infinity,
                                          height: 30.0,
                                          decoration: BoxDecoration(),
                                          child: FutureBuilder<int>(
                                            future:
                                                queryPromotionslistRecordCount(
                                              queryBuilder:
                                                  (promotionslistRecord) =>
                                                      promotionslistRecord
                                                          .where(
                                                'User',
                                                isEqualTo: gridViewUsersRecord
                                                    .reference,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              int containerCount =
                                                  snapshot.data!;
                                              return Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: FutureBuilder<
                                                      List<
                                                          PromotionslistRecord>>(
                                                    future:
                                                        queryPromotionslistRecordOnce(
                                                      queryBuilder:
                                                          (promotionslistRecord) =>
                                                              promotionslistRecord
                                                                  .where(
                                                        'User',
                                                        isEqualTo:
                                                            gridViewUsersRecord
                                                                .reference,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<PromotionslistRecord>
                                                          progressBarPromotionslistRecordList =
                                                          snapshot.data!;
                                                      return LinearPercentIndicator(
                                                        percent: 0.5,
                                                        width: 100.0,
                                                        lineHeight: 20.0,
                                                        animation: true,
                                                        animateFromLastPercent:
                                                            true,
                                                        progressColor:
                                                            Color(0xFF461286),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                        center: Text(
                                                          '${containerCount.toString()} / 100',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 16.0,
                                                              ),
                                                        ),
                                                        barRadius:
                                                            Radius.circular(
                                                                10.0),
                                                        padding:
                                                            EdgeInsets.zero,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.86, 0.50),
                                        child: Text(
                                          'No. of Promos',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.67, 0.68),
                                        child: FutureBuilder<int>(
                                          future:
                                              queryPromotionslistRecordCount(
                                            queryBuilder:
                                                (promotionslistRecord) =>
                                                    promotionslistRecord.where(
                                              'User',
                                              isEqualTo:
                                                  gridViewUsersRecord.reference,
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            int textCount = snapshot.data!;
                                            return Text(
                                              formatNumber(
                                                textCount,
                                                formatType: FormatType.custom,
                                                format: '',
                                                locale: '',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xCCFFFFFF),
                                                    fontSize: 32.0,
                                                  ),
                                            );
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.89, 0.93),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: ProfileWidget(
                                                      user: gridViewUsersRecord
                                                          .reference,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: Container(
                                            width: 185.0,
                                            height: 81.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFF9015),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.71, 0.66),
                                        child: Text(
                                          'BASIC PROFILE',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF14181B),
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.67, 0.90),
                                        child: Container(
                                          width: 121.0,
                                          height: 54.0,
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(-1.00, 0.00),
                                          child: Stack(
                                            children: [
                                              SelectionArea(
                                                  child: Text(
                                                gridViewUsersRecord.basicProfile
                                                    .maybeHandleOverflow(
                                                        maxChars: 10),
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 12.0,
                                                    ),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.81, -0.95),
                                        child: Container(
                                          width: 107.0,
                                          height: 33.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x6FE0E3E7),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.88, 0.09),
                                        child: Text(
                                          '${gridViewUsersRecord.name} ${gridViewUsersRecord.surname}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFFB1B2B3),
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.73, 0.90),
                                        child: Text(
                                          'Shirt size ${gridViewUsersRecord.shirtSize}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xCCFFFFFF),
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.78, -0.92),
                                        child: AlignedTooltip(
                                          content: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              child: Text(
                                                'View pending payments',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF14181B),
                                                    ),
                                              )),
                                          offset: 4.0,
                                          preferredDirection: AxisDirection.up,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          backgroundColor: Colors.white,
                                          elevation: 4.0,
                                          tailBaseWidth: 24.0,
                                          tailLength: 12.0,
                                          waitDuration:
                                              Duration(milliseconds: 100),
                                          showDuration:
                                              Duration(milliseconds: 1500),
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: StreamBuilder<
                                              List<PromotionslistRecord>>(
                                            stream: queryPromotionslistRecord(
                                              queryBuilder:
                                                  (promotionslistRecord) =>
                                                      promotionslistRecord
                                                          .where(
                                                'User',
                                                isEqualTo: gridViewUsersRecord
                                                    .reference,
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PromotionslistRecord>
                                                  iconPromotionslistRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final iconPromotionslistRecord =
                                                  iconPromotionslistRecordList
                                                          .isNotEmpty
                                                      ? iconPromotionslistRecordList
                                                          .first
                                                      : null;
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ListOfPromotionsWidget(
                                                            user:
                                                                gridViewUsersRecord
                                                                    .reference,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.document_scanner,
                                                  color: valueOrDefault<Color>(
                                                    iconPromotionslistRecord
                                                                ?.user !=
                                                            null
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .info
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                  ),
                                                  size: 23.0,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.57, -0.93),
                                        child: AlignedTooltip(
                                          content: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              child: Text(
                                                'Link user to campaign',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF14181B),
                                                    ),
                                              )),
                                          offset: 4.0,
                                          preferredDirection: AxisDirection.up,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          backgroundColor: Colors.white,
                                          elevation: 4.0,
                                          tailBaseWidth: 24.0,
                                          tailLength: 12.0,
                                          waitDuration:
                                              Duration(milliseconds: 100),
                                          showDuration:
                                              Duration(milliseconds: 1500),
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: LinkPromoterWidget(
                                                        user:
                                                            gridViewUsersRecord
                                                                .reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.link,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 23.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.37, -0.92),
                                        child: AlignedTooltip(
                                          content: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              child: Text(
                                                'Edit promoter',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF14181B),
                                                    ),
                                              )),
                                          offset: 4.0,
                                          preferredDirection: AxisDirection.up,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          backgroundColor: Colors.white,
                                          elevation: 4.0,
                                          tailBaseWidth: 24.0,
                                          tailLength: 12.0,
                                          waitDuration:
                                              Duration(milliseconds: 100),
                                          showDuration:
                                              Duration(milliseconds: 1500),
                                          triggerMode: TooltipTriggerMode.tap,
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: EditPromoterWidget(
                                                        user:
                                                            gridViewUsersRecord
                                                                .reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.edit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 22.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

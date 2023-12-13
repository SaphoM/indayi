import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/intererested_widget.dart';
import '/components/profile_mobile_widget.dart';
import '/components/promoter_accept_notify_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_promoter_model.dart';
export 'home_page_promoter_model.dart';

class HomePagePromoterWidget extends StatefulWidget {
  const HomePagePromoterWidget({Key? key}) : super(key: key);

  @override
  _HomePagePromoterWidgetState createState() => _HomePagePromoterWidgetState();
}

class _HomePagePromoterWidgetState extends State<HomePagePromoterWidget> {
  late HomePagePromoterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePagePromoterModel());

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
                Container(
                  width: double.infinity,
                  height: 1060.0,
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Container(
                              width: 290.0,
                              height: 71.0,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.pushNamedAuth(
                                            'Signup-Login', context.mounted);
                                      },
                                      text: 'Logout',
                                      options: FFButtonOptions(
                                        width: 250.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
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
                                                      child:
                                                          ProfileMobileWidget(
                                                        user:
                                                            currentUserReference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Icon(
                                              Icons.person_outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
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
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Container(
                            width: 329.0,
                            height: 195.0,
                            decoration: BoxDecoration(),
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
                        ),
                        Container(
                          width: 326.0,
                          height: 80.0,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Select the promotion you are interested in or wait for the Indayi admin invitation.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF14181B),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ),
                        if (valueOrDefault<bool>(
                                    currentUserDocument?.accept, false) ==
                                false
                            ? true
                            : false)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 20.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => FFButtonWidget(
                                onPressed: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: PromoterAcceptNotifyWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                text: 'Get Started',
                                options: FFButtonOptions(
                                  width: 311.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF461286),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ),
                        if (valueOrDefault<bool>(
                                    currentUserDocument?.accept, false) ==
                                false
                            ? false
                            : true)
                          AuthUserStreamWidget(
                            builder: (context) => Container(
                              width: 327.0,
                              height: 100.0,
                              decoration: BoxDecoration(),
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 20.0, 16.0, 20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'Notifi-Promoter',
                                          queryParameters: {
                                            'userParameter': serializeParam(
                                              currentUserReference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'My Promotions',
                                      options: FFButtonOptions(
                                        width: 311.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF461286),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
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
                                  Align(
                                    alignment: AlignmentDirectional(0.77, 0.03),
                                    child: FutureBuilder<int>(
                                      future: queryPromotionslistRecordCount(
                                        queryBuilder: (promotionslistRecord) =>
                                            promotionslistRecord
                                                .where(
                                                  'User',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .where(
                                                  'ReportSubmitted',
                                                  isEqualTo: 'No',
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        int containerCount = snapshot.data!;
                                        return Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF2F2F2),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Text(
                                              containerCount.toString(),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF14181B),
                                                  ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Container(
                          width: 363.0,
                          height: 972.0,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.00, 3.27),
                                child: Container(
                                  width: 400.0,
                                  height: 300.0,
                                  child: Stack(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    children: [],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: StreamBuilder<List<CompaignRecord>>(
                                  stream: queryCompaignRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<CompaignRecord>
                                        columnCompaignRecordList =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: List.generate(
                                                columnCompaignRecordList.length,
                                                (columnIndex) {
                                          final columnCompaignRecord =
                                              columnCompaignRecordList[
                                                  columnIndex];
                                          return Align(
                                            alignment: AlignmentDirectional(
                                                0.00, -1.00),
                                            child: Container(
                                              width: 315.0,
                                              height: 390.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Container(
                                                        width: 251.0,
                                                        height: 195.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFEFEFEF),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      final selectedMedia =
                                                                          await selectMediaWithSourceBottomSheet(
                                                                        context:
                                                                            context,
                                                                        allowPhoto:
                                                                            true,
                                                                      );
                                                                      if (selectedMedia !=
                                                                              null &&
                                                                          selectedMedia.every((m) => validateFileFormat(
                                                                              m.storagePath,
                                                                              context))) {
                                                                        setState(() =>
                                                                            _model.isDataUploading =
                                                                                true);
                                                                        var selectedUploadedFiles =
                                                                            <FFUploadedFile>[];

                                                                        var downloadUrls =
                                                                            <String>[];
                                                                        try {
                                                                          selectedUploadedFiles = selectedMedia
                                                                              .map((m) => FFUploadedFile(
                                                                                    name: m.storagePath.split('/').last,
                                                                                    bytes: m.bytes,
                                                                                    height: m.dimensions?.height,
                                                                                    width: m.dimensions?.width,
                                                                                    blurHash: m.blurHash,
                                                                                  ))
                                                                              .toList();

                                                                          downloadUrls = (await Future.wait(
                                                                            selectedMedia.map(
                                                                              (m) async => await uploadData(m.storagePath, m.bytes),
                                                                            ),
                                                                          ))
                                                                              .where((u) => u != null)
                                                                              .map((u) => u!)
                                                                              .toList();
                                                                        } finally {
                                                                          _model.isDataUploading =
                                                                              false;
                                                                        }
                                                                        if (selectedUploadedFiles.length == selectedMedia.length &&
                                                                            downloadUrls.length ==
                                                                                selectedMedia.length) {
                                                                          setState(
                                                                              () {
                                                                            _model.uploadedLocalFile =
                                                                                selectedUploadedFiles.first;
                                                                            _model.uploadedFileUrl =
                                                                                downloadUrls.first;
                                                                          });
                                                                        } else {
                                                                          setState(
                                                                              () {});
                                                                          return;
                                                                        }
                                                                      }
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          120.0,
                                                                      height:
                                                                          120.0,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        columnCompaignRecord
                                                                            .image,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        1.00),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    columnCompaignRecord
                                                                        .title,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Color(0xFF14181B),
                                                                          fontSize:
                                                                              25.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          '${dateTimeFormat('d/M/y', columnCompaignRecord.date)} - ${dateTimeFormat('d/M/y', columnCompaignRecord.enddate)}',
                                                          'Start date - End Date',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: Color(
                                                                  0xFF14181B),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Container(
                                                        width: 249.0,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Text(
                                                            columnCompaignRecord
                                                                .description
                                                                .maybeHandleOverflow(
                                                                    maxChars:
                                                                        60),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                  fontSize:
                                                                      16.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        columnCompaignRecord
                                                            .place,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: Color(
                                                                  0xFF14181B),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        columnCompaignRecord
                                                            .location,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: Color(
                                                                  0xFF14181B),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                            ),
                                                      ),
                                                    ),
                                                    if (valueOrDefault<bool>(
                                                                currentUserDocument
                                                                    ?.accept,
                                                                false) ==
                                                            false
                                                        ? false
                                                        : true)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.04, 1.04),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      20.0,
                                                                      16.0,
                                                                      20.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder: (context) =>
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  enableDrag:
                                                                      false,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return GestureDetector(
                                                                      onTap: () => _model
                                                                              .unfocusNode
                                                                              .canRequestFocus
                                                                          ? FocusScope.of(context).requestFocus(_model
                                                                              .unfocusNode)
                                                                          : FocusScope.of(context)
                                                                              .unfocus(),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            IntererestedWidget(
                                                                          campaign:
                                                                              columnCompaignRecord.reference,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));

                                                                setState(() {
                                                                  FFAppState()
                                                                          .Clicked =
                                                                      false;
                                                                });
                                                              },
                                                              text:
                                                                  'Interested',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 311.0,
                                                                height: 50.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Color(
                                                                    0xFFFF9015),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        })
                                            .divide(SizedBox(height: 10.0))
                                            .around(SizedBox(height: 10.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
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
      ),
    );
  }
}

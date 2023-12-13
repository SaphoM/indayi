import '/backend/backend.dart';
import '/components/link_promoter_widget.dart';
import '/components/viewlistofphotos_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  late ProfileModel _model;

  final animationsMap = {
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 3.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Container(
        width: 1222.0,
        height: 1128.0,
        decoration: BoxDecoration(
          color: Color(0x37FFFFFF),
        ),
        child: Container(
          width: 585.0,
          height: 1315.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            width: 100.0,
            height: 118.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: StreamBuilder<UsersRecord>(
                stream: UsersRecord.getDocument(widget.user!),
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
                  final columnUsersRecord = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Color(0xFFFF9015),
                                          size: 50.0,
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'iconOnPageLoadAnimation']!),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 1200.0,
                          height: 468.0,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 625.0,
                                height: 394.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 363.0,
                                      height: 185.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  Navigator.pop(context);
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            LinkPromoterWidget(
                                                          user: widget.user,
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                text: 'Book',
                                                options: FFButtonOptions(
                                                  width: 200.0,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF461286),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
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
                                        Container(
                                          width: 441.0,
                                          height: 204.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Text(
                                                    'Bio',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 18.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF14181B),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.00, 0.00),
                                child: Container(
                                  width: 570.0,
                                  height: 452.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 211.0,
                                        height: 211.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 219.0,
                                              height: 251.0,
                                              decoration: BoxDecoration(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  columnUsersRecord.photoUrl,
                                                  width: 226.0,
                                                  height: 268.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.99, 0.96),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  shape: BoxShape.circle,
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
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
                                                        return Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              ViewlistofphotosWidget(
                                                            user:
                                                                columnUsersRecord
                                                                    .reference,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Hero(
                                                    tag: columnUsersRecord
                                                        .photoFullPicture,
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      child: Image.network(
                                                        columnUsersRecord
                                                            .photoFullPicture,
                                                        width: 50.0,
                                                        height: 50.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Text(
                                          '${columnUsersRecord.name}  ${columnUsersRecord.surname}',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          width: 411.0,
                                          height: 199.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Title: ${columnUsersRecord.name}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Address: ${columnUsersRecord.location}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Email: ${columnUsersRecord.email}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Contact No: ${columnUsersRecord.phoneNumber}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Id Number: ${columnUsersRecord.idNo}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF14181B),
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Container(
                            width: 969.0,
                            height: 44.0,
                            decoration: BoxDecoration(),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(-1.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    'Promo History',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF14181B),
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        StreamBuilder<List<PromotionslistRecord>>(
                          stream: queryPromotionslistRecord(
                            queryBuilder: (promotionslistRecord) =>
                                promotionslistRecord.where(
                              'User',
                              isEqualTo: widget.user,
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
                            List<PromotionslistRecord>
                                containerPromotionslistRecordList =
                                snapshot.data!;
                            return Container(
                              width: 999.0,
                              height: 275.0,
                              decoration: BoxDecoration(),
                              child: StreamBuilder<List<PromotionslistRecord>>(
                                stream: queryPromotionslistRecord(
                                  queryBuilder: (promotionslistRecord) =>
                                      promotionslistRecord.where(
                                    'User',
                                    isEqualTo: columnUsersRecord.reference,
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
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PromotionslistRecord>
                                      columnPromotionslistRecordList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          columnPromotionslistRecordList.length,
                                          (columnIndex) {
                                        final columnPromotionslistRecord =
                                            columnPromotionslistRecordList[
                                                columnIndex];
                                        return Align(
                                          alignment:
                                              AlignmentDirectional(0.00, -1.00),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                9.67,
                                            height: 53.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
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
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Container(
                                                    width: 456.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          columnPromotionslistRecord
                                                              .promoName,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 522.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.00, 0.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        columnPromotionslistRecord
                                                            .description,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFF14181B),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }).divide(SizedBox(height: 10.0)),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: 969.0,
                            height: 44.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  'Brands ( Clients) I Promoted',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: 969.0,
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: StreamBuilder<List<PromotionslistRecord>>(
                              stream: queryPromotionslistRecord(
                                queryBuilder: (promotionslistRecord) =>
                                    promotionslistRecord.where(
                                  'User',
                                  isEqualTo: columnUsersRecord.reference,
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
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<PromotionslistRecord>
                                    rowPromotionslistRecordList =
                                    snapshot.data!;
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        rowPromotionslistRecordList.length,
                                        (rowIndex) {
                                      final rowPromotionslistRecord =
                                          rowPromotionslistRecordList[rowIndex];
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: Container(
                                              width: 98.0,
                                              height: 203.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  rowPromotionslistRecord.image,
                                                  width: 90.0,
                                                  height: 90.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

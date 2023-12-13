import '/backend/backend.dart';
import '/components/payment_details_widget.dart';
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
import 'list_of_promotions_model.dart';
export 'list_of_promotions_model.dart';

class ListOfPromotionsWidget extends StatefulWidget {
  const ListOfPromotionsWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _ListOfPromotionsWidgetState createState() => _ListOfPromotionsWidgetState();
}

class _ListOfPromotionsWidgetState extends State<ListOfPromotionsWidget>
    with TickerProviderStateMixin {
  late ListOfPromotionsModel _model;

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
    _model = createModel(context, () => ListOfPromotionsModel());

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
        width: 950.0,
        height: 1087.0,
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
                    alignment: AlignmentDirectional(1.00, 1.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                      child: InkWell(
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
                      ).animateOnPageLoad(
                          animationsMap['iconOnPageLoadAnimation']!),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.network(
                            columnUsersRecord.photoUrl,
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                    child: Text(
                      '${columnUsersRecord.name}  ${columnUsersRecord.surname}',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: FutureBuilder<int>(
                      future: queryPromotionslistRecordCount(
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
                        int textCount = snapshot.data!;
                        return Text(
                          'Here is a promoters list of ${textCount.toString()} completed promotions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF14181B),
                                  ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 50.0, 10.0),
                          child: Text(
                            'Total balance:  R ${columnUsersRecord.amountdue.toString()}',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    reverse: true,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
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
                              columnPromotionslistRecordList = snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  columnPromotionslistRecordList.length,
                                  (columnIndex) {
                                final columnPromotionslistRecord =
                                    columnPromotionslistRecordList[columnIndex];
                                return Container(
                                  width: 1091.0,
                                  height: 116.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).info,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(0.0, 2.0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        StreamBuilder<List<CompaignRecord>>(
                                          stream: queryCompaignRecord(
                                            queryBuilder: (compaignRecord) =>
                                                compaignRecord.where(
                                              'Title',
                                              isEqualTo:
                                                  columnPromotionslistRecord
                                                      .promoName,
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
                                            List<CompaignRecord>
                                                containerCompaignRecordList =
                                                snapshot.data!;
                                            final containerCompaignRecord =
                                                containerCompaignRecordList
                                                        .isNotEmpty
                                                    ? containerCompaignRecordList
                                                        .first
                                                    : null;
                                            return Container(
                                              width: 76.0,
                                              height: 76.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    containerCompaignRecord
                                                        ?.image,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/indayi-p-m-s-0j4wvk/assets/ll87p6t6clhv/2023-10-13_11.47.45.jpg',
                                                  ),
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        Container(
                                          width: 148.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        columnPromotionslistRecord
                                                            .promoName,
                                                        'Promotion Name',
                                                      ).maybeHandleOverflow(
                                                          maxChars: 20),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 20.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      columnPromotionslistRecord
                                                          .description,
                                                      'Description',
                                                    ).maybeHandleOverflow(
                                                        maxChars: 10),
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 257.0,
                                          height: 145.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    'Amount Due : ${columnPromotionslistRecord.balanceOwe.toString()}',
                                                    'Amount Due :',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFF9015),
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  'Total Amount: ${(columnPromotionslistRecord.rate * columnPromotionslistRecord.hoursworked).toString()}',
                                                  'Total Amount: ',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF14181B),
                                                          fontSize: 20.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    'Hours worked:  ${columnPromotionslistRecord.hoursworked.toString()}',
                                                    'Hours worked: ',
                                                  ),
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
                                        Container(
                                          width: 310.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              StreamBuilder<List<ReportRecord>>(
                                                stream: queryReportRecord(
                                                  queryBuilder:
                                                      (reportRecord) =>
                                                          reportRecord.where(
                                                    'PromCA',
                                                    isEqualTo:
                                                        columnPromotionslistRecord
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
                                                  List<ReportRecord>
                                                      buttonReportRecordList =
                                                      snapshot.data!;
                                                  final buttonReportRecord =
                                                      buttonReportRecordList
                                                              .isNotEmpty
                                                          ? buttonReportRecordList
                                                              .first
                                                          : null;
                                                  return FFButtonWidget(
                                                    onPressed:
                                                        columnPromotionslistRecord
                                                                    .hoursworked <=
                                                                0.0
                                                            ? null
                                                            : () async {
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
                                                                    return Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          PaymentDetailsWidget(
                                                                        userParameter:
                                                                            columnUsersRecord.reference,
                                                                        report:
                                                                            buttonReportRecord?.reference,
                                                                        promo: columnPromotionslistRecord
                                                                            .reference,
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));

                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                    text:
                                                        valueOrDefault<String>(
                                                      () {
                                                        if (columnPromotionslistRecord
                                                                .balanceOwe ==
                                                            0.0) {
                                                          return 'Paid';
                                                        } else if (columnPromotionslistRecord
                                                                .promoAmount <=
                                                            columnPromotionslistRecord
                                                                .balanceOwe) {
                                                          return 'Pay';
                                                        } else {
                                                          return 'Pay';
                                                        }
                                                      }(),
                                                      'Pay',
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 250.0,
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
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
                                                      color: () {
                                                        if (columnPromotionslistRecord
                                                                .balanceOwe ==
                                                            0.0) {
                                                          return Color(
                                                              0xFF21B707);
                                                        } else if (columnPromotionslistRecord
                                                                .promoAmount <=
                                                            columnPromotionslistRecord
                                                                .balanceOwe) {
                                                          return Color(
                                                              0xFF461286);
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primary;
                                                        }
                                                      }(),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
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
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

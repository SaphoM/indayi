import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/linkuser_widget.dart';
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
import 'package:url_launcher/url_launcher.dart';
import 'delink_promoter_model.dart';
export 'delink_promoter_model.dart';

class DelinkPromoterWidget extends StatefulWidget {
  const DelinkPromoterWidget({
    Key? key,
    this.user,
    this.campaign,
  }) : super(key: key);

  final DocumentReference? user;
  final DocumentReference? campaign;

  @override
  _DelinkPromoterWidgetState createState() => _DelinkPromoterWidgetState();
}

class _DelinkPromoterWidgetState extends State<DelinkPromoterWidget>
    with TickerProviderStateMixin {
  late DelinkPromoterModel _model;

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
    _model = createModel(context, () => DelinkPromoterModel());

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
      child: StreamBuilder<CompaignRecord>(
        stream: CompaignRecord.getDocument(widget.campaign!),
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
          final containerCompaignRecord = snapshot.data!;
          return Container(
            width: 585.0,
            height: 948.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: StreamBuilder<CompaignRecord>(
              stream: CompaignRecord.getDocument(widget.campaign!),
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
                final columnCompaignRecord = snapshot.data!;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 10.0, 0.0),
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
                    Icon(
                      Icons.add_link_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 90.0,
                    ),
                    Container(
                      width: 332.0,
                      height: 100.0,
                      decoration: BoxDecoration(),
                      child: Text(
                        'Are you sure you want to remove ',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                ),
                      ),
                    ),
                    Container(
                      width: 322.0,
                      height: 309.0,
                      decoration: BoxDecoration(),
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
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 120.0,
                                  height: 120.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    columnUsersRecord.photoUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Text(
                                  '${columnUsersRecord.name} ${columnUsersRecord.surname}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Text(
                                  'from',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Text(
                                  columnCompaignRecord.title,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                      ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    FutureBuilder<UsersRecord>(
                      future: UsersRecord.getDocumentOnce(widget.user!),
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
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StreamBuilder<List<PromotionslistRecord>>(
                              stream: queryPromotionslistRecord(
                                queryBuilder: (promotionslistRecord) =>
                                    promotionslistRecord.where(
                                  'PromoName',
                                  isEqualTo: columnCompaignRecord.title,
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
                                    containerPromotionslistRecordList =
                                    snapshot.data!;
                                final containerPromotionslistRecord =
                                    containerPromotionslistRecordList.isNotEmpty
                                        ? containerPromotionslistRecordList
                                            .first
                                        : null;
                                return Container(
                                  width: 250.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible:
                                        containerPromotionslistRecord?.user ==
                                                widget.user
                                            ? false
                                            : true,
                                    child: StreamBuilder<
                                        List<PromotionslistRecord>>(
                                      stream: queryPromotionslistRecord(
                                        queryBuilder: (promotionslistRecord) =>
                                            promotionslistRecord.where(
                                          'User',
                                          isEqualTo: widget.user,
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
                                        List<PromotionslistRecord>
                                            buttonPromotionslistRecordList =
                                            snapshot.data!;
                                        final buttonPromotionslistRecord =
                                            buttonPromotionslistRecordList
                                                    .isNotEmpty
                                                ? buttonPromotionslistRecordList
                                                    .first
                                                : null;
                                        return FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: LinkuserWidget(
                                                    campaign: widget.campaign,
                                                    user: widget.user,
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));

                                            Navigator.pop(context);
                                          },
                                          text: 'Link ',
                                          options: FFButtonOptions(
                                            width: 250.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF461286),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
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
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: StreamBuilder<List<PromotionslistRecord>>(
                                stream: queryPromotionslistRecord(
                                  queryBuilder: (promotionslistRecord) =>
                                      promotionslistRecord.where(
                                    'User',
                                    isEqualTo: widget.user,
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
                                      buttonPromotionslistRecordList =
                                      snapshot.data!;
                                  final buttonPromotionslistRecord =
                                      buttonPromotionslistRecordList.isNotEmpty
                                          ? buttonPromotionslistRecordList.first
                                          : null;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      await widget.user!.update({
                                        ...mapToFirestore(
                                          {
                                            'CampaignList':
                                                FieldValue.arrayRemove([
                                              columnCompaignRecord.title
                                            ]),
                                          },
                                        ),
                                      });

                                      await columnCompaignRecord.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'Interesteredusers':
                                                FieldValue.arrayRemove(
                                                    [widget.user]),
                                          },
                                        ),
                                      });
                                      await buttonPromotionslistRecord!
                                          .reference
                                          .delete();
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Promoter successfully removed',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor: Color(0xFFFF9015),
                                        ),
                                      );
                                      await launchUrl(Uri(
                                          scheme: 'mailto',
                                          path: columnUsersRecord.email,
                                          query: {
                                            'subject': 'De-link ',
                                            'body':
                                                'Hi ${columnUsersRecord.displayName}, You have been removed from this campaign ${columnCompaignRecord.title}',
                                          }
                                              .entries
                                              .map((MapEntry<String, String>
                                                      e) =>
                                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                              .join('&')));
                                    },
                                    text: 'Remove',
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFFF9015),
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
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

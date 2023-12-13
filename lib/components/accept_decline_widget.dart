import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
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
import 'accept_decline_model.dart';
export 'accept_decline_model.dart';

class AcceptDeclineWidget extends StatefulWidget {
  const AcceptDeclineWidget({
    Key? key,
    this.promo,
  }) : super(key: key);

  final DocumentReference? promo;

  @override
  _AcceptDeclineWidgetState createState() => _AcceptDeclineWidgetState();
}

class _AcceptDeclineWidgetState extends State<AcceptDeclineWidget>
    with TickerProviderStateMixin {
  late AcceptDeclineModel _model;

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
    _model = createModel(context, () => AcceptDeclineModel());

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
      child: StreamBuilder<PromotionslistRecord>(
        stream: PromotionslistRecord.getDocument(widget.promo!),
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
          final containerPromotionslistRecord = snapshot.data!;
          return Container(
            width: 585.0,
            height: 525.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: StreamBuilder<PromotionslistRecord>(
              stream: PromotionslistRecord.getDocument(widget.promo!),
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
                final columnPromotionslistRecord = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
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
                          Icon(
                            Icons.add_link_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 90.0,
                          ),
                        ],
                      ),
                      StreamBuilder<List<CompaignRecord>>(
                        stream: queryCompaignRecord(
                          queryBuilder: (compaignRecord) =>
                              compaignRecord.where(
                            'Title',
                            isEqualTo: columnPromotionslistRecord.promoName,
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<CompaignRecord> columnCompaignRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnCompaignRecord =
                              columnCompaignRecordList.isNotEmpty
                                  ? columnCompaignRecordList.first
                                  : null;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Container(
                                    width: 120.0,
                                    height: 120.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      columnCompaignRecord!.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 348.0,
                                height: 84.0,
                                decoration: BoxDecoration(),
                                child: Text(
                                  'You are about to ${FFAppState().AcceptOrDecline == true ? 'Accept ' : 'Decline '}${containerPromotionslistRecord.promoName} Campaign',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF14181B),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 50.0),
                                  child: Text(
                                    'Are you sure you want to ${FFAppState().AcceptOrDecline == true ? 'Accept ' : 'Decline '} this campaign',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF14181B),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().AcceptOrDecline == true) {
                              await widget.promo!
                                  .update(createPromotionslistRecordData(
                                accept: 'true',
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'You have successfully accepted this compaign',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0xFFFF9015),
                                ),
                              );
                            } else {
                              await widget.promo!
                                  .update(createPromotionslistRecordData(
                                accept: 'false',
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'You have successfully declined this compaign',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: Color(0xFFFF9015),
                                ),
                              );
                            }

                            Navigator.pop(context);
                          },
                          text: 'Yes',
                          options: FFButtonOptions(
                            width: 250.0,
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
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

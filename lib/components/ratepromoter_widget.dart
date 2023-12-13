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
import 'ratepromoter_model.dart';
export 'ratepromoter_model.dart';

class RatepromoterWidget extends StatefulWidget {
  const RatepromoterWidget({
    Key? key,
    this.user,
    this.campaign,
    this.promo,
  }) : super(key: key);

  final DocumentReference? user;
  final DocumentReference? campaign;
  final DocumentReference? promo;

  @override
  _RatepromoterWidgetState createState() => _RatepromoterWidgetState();
}

class _RatepromoterWidgetState extends State<RatepromoterWidget>
    with TickerProviderStateMixin {
  late RatepromoterModel _model;

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
    _model = createModel(context, () => RatepromoterModel());

    _model.ratingsController ??= TextEditingController();
    _model.ratingsFocusNode ??= FocusNode();

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

    return Container(
      width: 585.0,
      height: 948.0,
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
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(1.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
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
                Icons.star_rate_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 90.0,
              ),
              Text(
                'You are about to rate promoter',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF14181B),
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  '${columnUsersRecord.name} ${columnUsersRecord.surname}',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  'For ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF14181B),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
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
                    final textCompaignRecord = snapshot.data!;
                    return Text(
                      '${textCompaignRecord.title} campaign',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                              ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Container(
                  width: 350.0,
                  child: TextFormField(
                    controller: _model.ratingsController,
                    focusNode: _model.ratingsFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Please type in a number between (1 - 10)',
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintText: 'i.e 1-10',
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF461286),
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF14181B),
                        ),
                    validator:
                        _model.ratingsControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FutureBuilder<CompaignRecord>(
                    future: CompaignRecord.getDocumentOnce(widget.campaign!),
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
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: StreamBuilder<PromotionslistRecord>(
                              stream: PromotionslistRecord.getDocument(
                                  widget.promo!),
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
                                final buttonPromotionslistRecord =
                                    snapshot.data!;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    Navigator.pop(context);

                                    await widget.promo!
                                        .update(createPromotionslistRecordData(
                                      ratings: double.tryParse(
                                          _model.ratingsController.text),
                                    ));
                                  },
                                  text: 'Rate',
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
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

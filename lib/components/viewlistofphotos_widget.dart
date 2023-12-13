import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'viewlistofphotos_model.dart';
export 'viewlistofphotos_model.dart';

class ViewlistofphotosWidget extends StatefulWidget {
  const ViewlistofphotosWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _ViewlistofphotosWidgetState createState() => _ViewlistofphotosWidgetState();
}

class _ViewlistofphotosWidgetState extends State<ViewlistofphotosWidget>
    with TickerProviderStateMixin {
  late ViewlistofphotosModel _model;

  final animationsMap = {
    'iconOnPageLoadAnimation1': AnimationInfo(
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
    'iconOnPageLoadAnimation2': AnimationInfo(
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
    _model = createModel(context, () => ViewlistofphotosModel());

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
        width: 585.0,
        height: 1087.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Container(
            width: 585.0,
            height: 1218.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: 585.0,
                    height: 539.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Container(
                            width: 389.0,
                            height: 505.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: StreamBuilder<List<PhotosRecord>>(
                                    stream: queryPhotosRecord(
                                      queryBuilder: (photosRecord) =>
                                          photosRecord.where(
                                        'user',
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<PhotosRecord> rowPhotosRecordList =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                              rowPhotosRecordList.length,
                                              (rowIndex) {
                                            final rowPhotosRecord =
                                                rowPhotosRecordList[rowIndex];
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.network(
                                                  rowPhotosRecord.photo,
                                                  width: 396.0,
                                                  height: 516.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.99, -0.97),
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
                                  ).animateOnPageLoad(animationsMap[
                                      'iconOnPageLoadAnimation1']!),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.03, 0.81),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.sync_alt,
                                      color: Color(0xFFFF9015),
                                      size: 50.0,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'iconOnPageLoadAnimation2']!),
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
        ),
      ),
    );
  }
}

import '/backend/backend.dart';
import '/components/delete_client_widget.dart';
import '/components/edit_client_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'client_list_model.dart';
export 'client_list_model.dart';

class ClientListWidget extends StatefulWidget {
  const ClientListWidget({Key? key}) : super(key: key);

  @override
  _ClientListWidgetState createState() => _ClientListWidgetState();
}

class _ClientListWidgetState extends State<ClientListWidget>
    with TickerProviderStateMixin {
  late ClientListModel _model;

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
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1450.ms,
          begin: Offset(44.0, 0.0),
          end: Offset(0.0, 0.0),
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
    _model = createModel(context, () => ClientListModel());

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
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
                      animationsMap['iconOnPageLoadAnimation1']!),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Icon(
                  Icons.location_history,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 90.0,
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: Text(
                  'CLIENT LIST',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  'Here is a list of clients',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF14181B),
                      ),
                ),
              ),
              StreamBuilder<List<ClientsRecord>>(
                stream: queryClientsRecord(),
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
                  List<ClientsRecord> columnClientsRecordList = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnClientsRecordList.length,
                          (columnIndex) {
                        final columnClientsRecord =
                            columnClientsRecordList[columnIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Container(
                            width: 1091.0,
                            height: 122.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
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
                                  16.0, 10.0, 16.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          columnClientsRecord.logo,
                                        ).image,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          columnClientsRecord.logo,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/indayi-p-m-s-0j4wvk/assets/ll87p6t6clhv/2023-10-13_11.47.45.jpg',
                                        ),
                                        width: 80.0,
                                        height: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 138.0,
                                        height: 119.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Text(
                                                  columnClientsRecord.name,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 20.0,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 31.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Text(
                                                  columnClientsRecord.address,
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
                                              Container(
                                                width: double.infinity,
                                                height: 32.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: Text(
                                                  columnClientsRecord.notes,
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
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.00),
                                      child: Text(
                                        columnClientsRecord.name,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF14181B),
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 119.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.00, 0.00),
                                      child: Text(
                                        columnClientsRecord.cellphoneNo,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF14181B),
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Text(
                                          columnClientsRecord.email,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Color(0xFF14181B),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: EditClientWidget(
                                              clientParameter:
                                                  columnClientsRecord.reference,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Icon(
                                      Icons.mode_edit_outline_outlined,
                                      color: Color(0xFF179D07),
                                      size: 40.0,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: DeleteClientWidget(
                                              clientParameter:
                                                  columnClientsRecord.reference,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Icon(
                                      Icons.restore_from_trash_rounded,
                                      color: Color(0xFF9D0710),
                                      size: 40.0,
                                    ),
                                  ),
                                ],
                              ),
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
        ),
      ),
    );
  }
}

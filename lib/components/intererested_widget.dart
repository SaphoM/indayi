import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'intererested_model.dart';
export 'intererested_model.dart';

class IntererestedWidget extends StatefulWidget {
  const IntererestedWidget({
    Key? key,
    this.campaign,
  }) : super(key: key);

  final DocumentReference? campaign;

  @override
  _IntererestedWidgetState createState() => _IntererestedWidgetState();
}

class _IntererestedWidgetState extends State<IntererestedWidget> {
  late IntererestedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntererestedModel());

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
      height: 607.0,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 114.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            setState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            var downloadUrls = <String>[];
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
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                            } else {
                              setState(() {});
                              return;
                            }
                          }
                        },
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            columnCompaignRecord.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.add_link_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 90.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 351.0,
                      height: 100.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Are you sure you are interested in this campaign: ',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                ),
                          ),
                          Text(
                            columnCompaignRecord.title,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await widget.campaign!.update({
                      ...mapToFirestore(
                        {
                          'InterestedPromotersList':
                              FieldValue.arrayUnion([currentUserReference?.id]),
                        },
                      ),
                    });

                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'CampaignList': FieldValue.arrayUnion(
                              [columnCompaignRecord.title]),
                        },
                      ),
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Updated successfully',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Color(0xFFFF9015),
                        action: SnackBarAction(
                          label: 'Okay',
                          onPressed: () async {
                            context.pushNamed('HomePagePromoter');
                          },
                        ),
                      ),
                    );

                    context.pushNamed('HomePagePromoter');
                  },
                  text: 'Yes',
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF461286),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'No',
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF9015),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Please note that only admin can change your selection',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF14181B),
                      ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

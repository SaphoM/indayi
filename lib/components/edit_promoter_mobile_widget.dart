import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_promoter_mobile_model.dart';
export 'edit_promoter_mobile_model.dart';

class EditPromoterMobileWidget extends StatefulWidget {
  const EditPromoterMobileWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final DocumentReference? user;

  @override
  _EditPromoterMobileWidgetState createState() =>
      _EditPromoterMobileWidgetState();
}

class _EditPromoterMobileWidgetState extends State<EditPromoterMobileWidget>
    with TickerProviderStateMixin {
  late EditPromoterMobileModel _model;

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
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation14': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation15': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation16': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation17': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation18': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation19': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation20': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation21': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation22': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation23': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation24': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation25': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation26': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation27': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation28': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation29': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation30': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation31': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation32': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation33': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation34': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
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
    _model = createModel(context, () => EditPromoterMobileModel());

    _model.firstNameInputFocusNode ??= FocusNode();

    _model.lastNameInputFocusNode ??= FocusNode();

    _model.knownAsFocusNode ??= FocusNode();

    _model.locationFocusNode ??= FocusNode();

    _model.passwordFocusNode ??= FocusNode();

    _model.cellphoneNoFocusNode ??= FocusNode();

    _model.iDNoFocusNode ??= FocusNode();

    _model.ageFocusNode ??= FocusNode();

    _model.genderFocusNode ??= FocusNode();

    _model.ethnicityFocusNode ??= FocusNode();

    _model.regionFocusNode ??= FocusNode();

    _model.cityFocusNode ??= FocusNode();

    _model.languageFocusNode ??= FocusNode();

    _model.campusFocusNode ??= FocusNode();

    _model.qualificationFocusNode ??= FocusNode();

    _model.availabilityFocusNode ??= FocusNode();

    _model.driversLicenseFocusNode ??= FocusNode();

    _model.ownVehicleFocusNode ??= FocusNode();

    _model.twitterHandleFocusNode ??= FocusNode();

    _model.facebookNameFocusNode ??= FocusNode();

    _model.instagramHandleFocusNode ??= FocusNode();

    _model.promotionalExperienceFocusNode ??= FocusNode();

    _model.whatMakesYouGreatAmbassordorFocusNode ??= FocusNode();

    _model.specialTalentsFocusNode ??= FocusNode();

    _model.profileBioFocusNode ??= FocusNode();

    _model.nextOfKinNameFocusNode ??= FocusNode();

    _model.nextOfKinSurnameFocusNode ??= FocusNode();

    _model.nextOfKinCell1FocusNode ??= FocusNode();

    _model.nextOfKinCell2FocusNode ??= FocusNode();

    _model.nextOfKinEmailFocusNode ??= FocusNode();

    _model.bankNameInputFocusNode ??= FocusNode();

    _model.accountHolderInputFocusNode ??= FocusNode();

    _model.accountNoInputFocusNode ??= FocusNode();

    _model.branchCodeFocusNode ??= FocusNode();

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
          final containerUsersRecord = snapshot.data!;
          return Container(
            width: 375.0,
            height: 935.0,
            decoration: BoxDecoration(
              color: Color(0x37FFFFFF),
            ),
            child: Container(
              width: 585.0,
              height: 1215.0,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
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
                                      'iconOnPageLoadAnimation1']!),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.face_5,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 90.0,
                            ).animateOnPageLoad(
                                animationsMap['iconOnPageLoadAnimation2']!),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'EDIT PROMOTER',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          setState(() =>
                                              _model.isDataUploading1 = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            _model.isDataUploading1 = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            setState(() {
                                              _model.uploadedLocalFile1 =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl1 =
                                                  downloadUrls.first;
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
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              Duration(milliseconds: 500),
                                          imageUrl: valueOrDefault<String>(
                                            containerUsersRecord.photoUrl,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/indayi-p-m-s-0j4wvk/assets/z7fbw1f75aly/Untitled-1-01.png',
                                          ),
                                          fit: BoxFit.cover,
                                          errorWidget:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/error_image.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['stackOnPageLoadAnimation']!),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0xFF363739),
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
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isDataUploading2 = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading2 = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile2 =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl2 =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      containerUsersRecord.photoFullPicture,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/indayi-p-m-s-0j4wvk/assets/25lcjxfpq82s/Untitled-21-01-01.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Upload few full photos',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.firstNameInputController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.name,
                                  ),
                                  focusNode: _model.firstNameInputFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'First Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'First Name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .firstNameInputControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.lastNameInputController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.surname,
                                  ),
                                  focusNode: _model.lastNameInputFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Last Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Last Name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .lastNameInputControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation2']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.knownAsController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.knownAs,
                                  ),
                                  focusNode: _model.knownAsFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Also Known As',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'AKA',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.knownAsControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation3']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.locationController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.location,
                                  ),
                                  focusNode: _model.locationFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Location',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Location',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.locationControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation4']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.passwordController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.email,
                                  ),
                                  focusNode: _model.passwordFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Email Address',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.passwordControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation5']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.cellphoneNoController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.cellphone,
                                  ),
                                  focusNode: _model.cellphoneNoFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Cellphone No',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Cellphone No',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .cellphoneNoControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation6']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.iDNoController ??=
                                      TextEditingController(
                                    text: valueOrDefault<String>(
                                      containerUsersRecord.idNo,
                                      '000000000000',
                                    ),
                                  ),
                                  focusNode: _model.iDNoFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'ID Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'ID Number',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  maxLength: 13,
                                  keyboardType: TextInputType.number,
                                  validator: _model.iDNoControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation7']!),
                            ),
                            Container(
                              width: 300.0,
                              height: 87.0,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Text(
                                        'Age',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 12.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 350.0,
                                    child: TextFormField(
                                      controller: _model.ageController ??=
                                          TextEditingController(
                                        text: containerUsersRecord.age,
                                      ),
                                      focusNode: _model.ageFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText: valueOrDefault<String>(
                                          _model.iDNoController.text != null &&
                                                  _model.iDNoController.text !=
                                                      ''
                                              ? functions.calculateAndReturnAge(
                                                  _model.iDNoController.text)
                                              : 'Age',
                                          '0',
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF14181B),
                                          ),
                                      validator: _model.ageControllerValidator
                                          .asValidator(context),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textFieldOnPageLoadAnimation8']!),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.genderController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.gender,
                                  ),
                                  focusNode: _model.genderFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Gender',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Gender',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.genderControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation9']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.ethnicityController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.ethnicity,
                                  ),
                                  focusNode: _model.ethnicityFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Ethnicity',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Ethnicity',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.ethnicityControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation10']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                width: 300.0,
                                height: 59.0,
                                decoration: BoxDecoration(),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownshirtsizeValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownshirtsizeValue ??=
                                        containerUsersRecord.shirtSize,
                                  ),
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
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownshirtsizeValue = val),
                                  width: 271.0,
                                  height: 23.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  hintText: ' Select a shirt size',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor: Color(0xFFE0E3E7),
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                width: 300.0,
                                height: 59.0,
                                decoration: BoxDecoration(),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model
                                          .dropDownwaistsizeValueController ??=
                                      FormFieldController<String>(
                                    _model.dropDownwaistsizeValue ??=
                                        containerUsersRecord.waistSize,
                                  ),
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
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownwaistsizeValue = val),
                                  width: 271.0,
                                  height: 23.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  hintText: ' Select a waist size',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor: Color(0xFFE0E3E7),
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.regionController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.region,
                                  ),
                                  focusNode: _model.regionFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Region',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Region',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.regionControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation11']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.cityController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.city,
                                  ),
                                  focusNode: _model.cityFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'City',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'City',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.cityControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation12']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.languageController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.language,
                                  ),
                                  focusNode: _model.languageFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Language',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Language',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.languageControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation13']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.campusController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.campus,
                                  ),
                                  focusNode: _model.campusFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Campus',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Campus',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model.campusControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation14']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.qualificationController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.qualification,
                                  ),
                                  focusNode: _model.qualificationFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Qualification',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Qualification',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .qualificationControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation15']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.availabilityController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.availability,
                                  ),
                                  focusNode: _model.availabilityFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Availability',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Availability',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .availabilityControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation16']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.driversLicenseController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.driversLicence,
                                  ),
                                  focusNode: _model.driversLicenseFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Driver\'s License',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Driver\'s License',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .driversLicenseControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation17']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.ownVehicleController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.ownVehicle,
                                  ),
                                  focusNode: _model.ownVehicleFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Own Vehicle',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Own Vehicle',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .ownVehicleControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation18']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.twitterHandleController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.twitterhandle,
                                  ),
                                  focusNode: _model.twitterHandleFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Twitter Handle',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Twitter Handle',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .twitterHandleControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation19']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.facebookNameController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.facebookname,
                                  ),
                                  focusNode: _model.facebookNameFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Facebook Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Facebook Name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .facebookNameControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation20']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.instagramHandleController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.instagramHandle,
                                  ),
                                  focusNode: _model.instagramHandleFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Instagram Handle',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Instagram Handle',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .instagramHandleControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation21']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.promotionalExperienceController ??=
                                          TextEditingController(
                                    text: containerUsersRecord
                                        .promotionalExperience,
                                  ),
                                  focusNode:
                                      _model.promotionalExperienceFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        'Promotional Experience, Years of experience ',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText:
                                        'Promotional Experience, Years of experience ',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  maxLines: 8,
                                  validator: _model
                                      .promotionalExperienceControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation22']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model
                                          .whatMakesYouGreatAmbassordorController ??=
                                      TextEditingController(
                                    text: containerUsersRecord
                                        .whatMakeYouGreatBrand,
                                  ),
                                  focusNode: _model
                                      .whatMakesYouGreatAmbassordorFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        'What makes you a great brand ambassador',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText:
                                        'What makes you a great brand ambassador',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  maxLines: 8,
                                  validator: _model
                                      .whatMakesYouGreatAmbassordorControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation23']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.specialTalentsController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.specialtalents,
                                  ),
                                  focusNode: _model.specialTalentsFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Special Talents',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Special Talents',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  maxLines: 8,
                                  validator: _model
                                      .specialTalentsControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation24']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.profileBioController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.basicProfile,
                                  ),
                                  focusNode: _model.profileBioFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Profile Bio',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Profile Bio',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  maxLines: 8,
                                  validator: _model
                                      .profileBioControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation25']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'NEXT OF KIN DETAILS',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.nextOfKinNameController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.nextofKinName,
                                  ),
                                  focusNode: _model.nextOfKinNameFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Name',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .nextOfKinNameControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation26']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.nextOfKinSurnameController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.nextofKinSurname,
                                  ),
                                  focusNode: _model.nextOfKinSurnameFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Surname',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Surname',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .nextOfKinSurnameControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation27']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.nextOfKinCell1Controller ??=
                                          TextEditingController(
                                    text: containerUsersRecord.nextofKinPhone1,
                                  ),
                                  focusNode: _model.nextOfKinCell1FocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number 1',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Phone Number 1',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .nextOfKinCell1ControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation28']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.nextOfKinCell2Controller ??=
                                          TextEditingController(
                                    text: containerUsersRecord.nextofKinEmail,
                                  ),
                                  focusNode: _model.nextOfKinCell2FocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number 2',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Phone Number 2',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .nextOfKinCell2ControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation29']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.nextOfKinEmailController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.nextofKinEmail,
                                  ),
                                  focusNode: _model.nextOfKinEmailFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email ( Optional )',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Email ( Optional )',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .nextOfKinEmailControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation30']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'BANKING DETAILS',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.bankNameInputController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.nameOfBank,
                                  ),
                                  focusNode: _model.bankNameInputFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Name of Bank',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Name of Bank',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .bankNameInputControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation31']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.accountHolderInputController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.accountHolder,
                                  ),
                                  focusNode: _model.accountHolderInputFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Account Holder',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Account Holder',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .accountHolderInputControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation32']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller:
                                      _model.accountNoInputController ??=
                                          TextEditingController(
                                    text: containerUsersRecord.accountNo,
                                  ),
                                  focusNode: _model.accountNoInputFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Account Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Account Number',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .accountNoInputControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation33']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 0.0),
                              child: Container(
                                width: 300.0,
                                child: TextFormField(
                                  controller: _model.branchCodeController ??=
                                      TextEditingController(
                                    text: containerUsersRecord.branchCode,
                                  ),
                                  focusNode: _model.branchCodeFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Branch Code',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'Branch Code',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF14181B),
                                      ),
                                  validator: _model
                                      .branchCodeControllerValidator
                                      .asValidator(context),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'textFieldOnPageLoadAnimation34']!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await widget.user!
                                      .update(createUsersRecordData(
                                    email: _model.passwordController.text,
                                    displayName:
                                        '${_model.firstNameInputController.text} ${_model.lastNameInputController.text}',
                                    uid: '',
                                    phoneNumber:
                                        _model.cellphoneNoController.text,
                                    instagramHandle:
                                        _model.instagramHandleController.text,
                                    nameOfBank:
                                        _model.bankNameInputController.text,
                                    accountHolder: _model
                                        .accountHolderInputController.text,
                                    accountNo:
                                        _model.accountNoInputController.text,
                                    idNo: _model.iDNoController.text,
                                    branchCode:
                                        _model.branchCodeController.text,
                                    language: _model.languageController.text,
                                    campus: _model.campusController.text,
                                    qualification:
                                        _model.qualificationController.text,
                                    promotionalExperience: _model
                                        .promotionalExperienceController.text,
                                    whatMakeYouGreatBrand: _model
                                        .whatMakesYouGreatAmbassordorController
                                        .text,
                                    interestedPromoter: true,
                                    specialtalents:
                                        _model.specialTalentsController.text,
                                    availability:
                                        _model.availabilityController.text,
                                    driversLicence:
                                        _model.driversLicenseController.text,
                                    ownVehicle:
                                        _model.ownVehicleController.text,
                                    twitterhandle:
                                        _model.twitterHandleController.text,
                                    facebookname:
                                        _model.facebookNameController.text,
                                    name: _model.firstNameInputController.text,
                                    basicProfile:
                                        _model.profileBioController.text,
                                    surname:
                                        _model.lastNameInputController.text,
                                    knownAs: _model.knownAsController.text,
                                    cellphone:
                                        _model.cellphoneNoController.text,
                                    gender: _model.genderController.text,
                                    ethnicity: _model.ethnicityController.text,
                                    shirtSize: _model.dropDownshirtsizeValue,
                                    waistSize: _model.dropDownwaistsizeValue,
                                    region: _model.regionController.text,
                                    city: _model.cityController.text,
                                    amountdue: containerUsersRecord.amountdue,
                                    promotionexperience: _model
                                        .promotionalExperienceController.text,
                                    userType: containerUsersRecord.userType,
                                    location: _model.locationController.text,
                                    shirtSQ: _model.dropDownshirtsizeValue,
                                    nextofKinName:
                                        _model.nextOfKinNameController.text,
                                    nextofKinSurname:
                                        _model.nextOfKinSurnameController.text,
                                    nextofKinPhone1:
                                        _model.nextOfKinCell1Controller.text,
                                    nextofKinPhone2:
                                        _model.nextOfKinCell2Controller.text,
                                    nextofKinEmail:
                                        _model.nextOfKinEmailController.text,
                                  ));
                                  if (_model.ageController.text != null &&
                                      _model.ageController.text != '') {
                                    await widget.user!
                                        .update(createUsersRecordData(
                                      age: _model.ageController.text,
                                    ));
                                  } else {
                                    await widget.user!
                                        .update(createUsersRecordData(
                                      age: functions.calculateAndReturnAge(
                                          _model.iDNoController.text),
                                    ));
                                  }

                                  if (_model.uploadedFileUrl2 != null &&
                                      _model.uploadedFileUrl2 != '') {
                                    await widget.user!
                                        .update(createUsersRecordData(
                                      photoFullPicture: _model.uploadedFileUrl2,
                                    ));

                                    await PhotosRecord.collection
                                        .doc()
                                        .set(createPhotosRecordData(
                                          photo: _model.uploadedFileUrl2,
                                          user: widget.user,
                                        ));
                                  }
                                  if (_model.uploadedFileUrl1 != null &&
                                      _model.uploadedFileUrl1 != '') {
                                    await widget.user!
                                        .update(createUsersRecordData(
                                      photoUrl: _model.uploadedFileUrl1,
                                    ));
                                  }
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Success'),
                                        content: Text(
                                            'You have successfully updated the promoter'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  Navigator.pop(context);
                                },
                                text: 'Update',
                                options: FFButtonOptions(
                                  width: 300.0,
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
                            Container(
                              width: 100.0,
                              height: 41.0,
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

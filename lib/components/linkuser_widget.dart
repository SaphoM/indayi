import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'linkuser_model.dart';
export 'linkuser_model.dart';

class LinkuserWidget extends StatefulWidget {
  const LinkuserWidget({
    Key? key,
    this.campaign,
    this.user,
  }) : super(key: key);

  final DocumentReference? campaign;
  final DocumentReference? user;

  @override
  _LinkuserWidgetState createState() => _LinkuserWidgetState();
}

class _LinkuserWidgetState extends State<LinkuserWidget>
    with TickerProviderStateMixin {
  late LinkuserModel _model;

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
    'textFieldOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => LinkuserModel());

    _model.rateperhourinputController ??= TextEditingController();
    _model.rateperhourinputFocusNode ??= FocusNode();

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
        height: 948.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Align(
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
              final columnCompaignRecord = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.00, 0.00),
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
                  Icon(
                    Icons.add_link_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 90.0,
                  ),
                  Text(
                    'You are about to link',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Text(
                      '${columnCompaignRecord.title} campaign',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Text(
                      valueOrDefault<String>(
                        'Date: ${valueOrDefault<String>(
                          dateTimeFormat('d/M/y', columnCompaignRecord.date),
                          'Start date',
                        )} - ${valueOrDefault<String>(
                          dateTimeFormat('d/M/y', columnCompaignRecord.enddate),
                          'End date',
                        )}',
                        'Start - End date',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF14181B),
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Text(
                      'To',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF14181B),
                          ),
                    ),
                  ),
                  Container(
                    width: 400.0,
                    height: 126.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(),
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
                            List<UsersRecord> dropDownUsersRecordList =
                                snapshot.data!;
                            return FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: dropDownUsersRecordList
                                  .map((e) => e.displayName)
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF14181B),
                                  ),
                              hintText: 'Please Select User',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  child: TextFormField(
                                    controller:
                                        _model.rateperhourinputController,
                                    focusNode: _model.rateperhourinputFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Rate Per Hour',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintText: 'Rate Per Hour',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
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
                                      focusedErrorBorder: UnderlineInputBorder(
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
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .rateperhourinputControllerValidator
                                        .asValidator(context),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'textFieldOnPageLoadAnimation']!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        queryBuilder: (usersRecord) => usersRecord.where(
                          'display_name',
                          isEqualTo: _model.dropDownValue,
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
                        List<UsersRecord> buttonUsersRecordList =
                            snapshot.data!;
                        final buttonUsersRecord =
                            buttonUsersRecordList.isNotEmpty
                                ? buttonUsersRecordList.first
                                : null;
                        return FFButtonWidget(
                          onPressed: () async {
                            if (_model.dropDownValue != null &&
                                _model.dropDownValue != '') {
                              await PromotionslistRecord.collection.doc().set({
                                ...createPromotionslistRecordData(
                                  promoName: columnCompaignRecord.title,
                                  user: buttonUsersRecord?.reference,
                                  description: columnCompaignRecord.description,
                                  startdate: columnCompaignRecord.date,
                                  enddate: columnCompaignRecord.enddate,
                                  campaign: columnCompaignRecord.reference,
                                  rate: double.tryParse(
                                      _model.rateperhourinputController.text),
                                  reportSubmitted: 'No',
                                  image: columnCompaignRecord.image,
                                ),
                                ...mapToFirestore(
                                  {
                                    'Products': columnCompaignRecord.products,
                                  },
                                ),
                              });
                              Navigator.pop(context);

                              await buttonUsersRecord!.reference.update({
                                ...mapToFirestore(
                                  {
                                    'CampaignList': FieldValue.arrayUnion(
                                        [columnCompaignRecord.title]),
                                  },
                                ),
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Please select promoter',
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
                          },
                          text: 'Link',
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
        ),
      ),
    );
  }
}

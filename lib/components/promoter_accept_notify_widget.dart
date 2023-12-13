import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'promoter_accept_notify_model.dart';
export 'promoter_accept_notify_model.dart';

class PromoterAcceptNotifyWidget extends StatefulWidget {
  const PromoterAcceptNotifyWidget({Key? key}) : super(key: key);

  @override
  _PromoterAcceptNotifyWidgetState createState() =>
      _PromoterAcceptNotifyWidgetState();
}

class _PromoterAcceptNotifyWidgetState extends State<PromoterAcceptNotifyWidget>
    with TickerProviderStateMixin {
  late PromoterAcceptNotifyModel _model;

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
    _model = createModel(context, () => PromoterAcceptNotifyModel());

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
        width: 357.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Column(
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
                Icons.no_encryption_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 90.0,
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: 345.0,
                  height: 152.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'In order to start promoting admin need to accept your application',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                              ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

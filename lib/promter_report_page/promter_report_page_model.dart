import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'promter_report_page_widget.dart' show PromterReportPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PromterReportPageModel extends FlutterFlowModel<PromterReportPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Texthoursworked widget.
  FocusNode? texthoursworkedFocusNode;
  TextEditingController? texthoursworkedController;
  String? Function(BuildContext, String?)? texthoursworkedControllerValidator;
  // State field(s) for NoOfStaffOnStandInput widget.
  FocusNode? noOfStaffOnStandInputFocusNode;
  TextEditingController? noOfStaffOnStandInputController;
  String? Function(BuildContext, String?)?
      noOfStaffOnStandInputControllerValidator;
  // State field(s) for TextWhatisthemainpurposeoftheactivationField widget.
  FocusNode? textWhatisthemainpurposeoftheactivationFieldFocusNode;
  TextEditingController? textWhatisthemainpurposeoftheactivationFieldController;
  String? Function(BuildContext, String?)?
      textWhatisthemainpurposeoftheactivationFieldControllerValidator;
  // State field(s) for Describethelayoutofthestandorthe widget.
  FocusNode? describethelayoutofthestandortheFocusNode;
  TextEditingController? describethelayoutofthestandortheController;
  String? Function(BuildContext, String?)?
      describethelayoutofthestandortheControllerValidator;
  // State field(s) for Whatarethepositiveconsumercomments widget.
  FocusNode? whatarethepositiveconsumercommentsFocusNode;
  TextEditingController? whatarethepositiveconsumercommentsController;
  String? Function(BuildContext, String?)?
      whatarethepositiveconsumercommentsControllerValidator;
  // State field(s) for Whatarethenegativeconsumercomments widget.
  FocusNode? whatarethenegativeconsumercommentsFocusNode;
  TextEditingController? whatarethenegativeconsumercommentsController;
  String? Function(BuildContext, String?)?
      whatarethenegativeconsumercommentsControllerValidator;
  // State field(s) for Whatarethechallengesyou widget.
  FocusNode? whatarethechallengesyouFocusNode;
  TextEditingController? whatarethechallengesyouController;
  String? Function(BuildContext, String?)?
      whatarethechallengesyouControllerValidator;
  // State field(s) for Whatwerethefrequentlyasked widget.
  FocusNode? whatwerethefrequentlyaskedFocusNode;
  TextEditingController? whatwerethefrequentlyaskedController;
  String? Function(BuildContext, String?)?
      whatwerethefrequentlyaskedControllerValidator;
  // State field(s) for Whatdoyousuggestweimprovefor widget.
  FocusNode? whatdoyousuggestweimproveforFocusNode;
  TextEditingController? whatdoyousuggestweimproveforController;
  String? Function(BuildContext, String?)?
      whatdoyousuggestweimproveforControllerValidator;
  // State field(s) for Whatdoyousuggestweimproveforfutureactivationspleasebedetailed widget.
  FocusNode?
      whatdoyousuggestweimproveforfutureactivationspleasebedetailedFocusNode;
  TextEditingController?
      whatdoyousuggestweimproveforfutureactivationspleasebedetailedController;
  String? Function(BuildContext, String?)?
      whatdoyousuggestweimproveforfutureactivationspleasebedetailedControllerValidator;
  // State field(s) for DidyoureachtargetIfnotwhatwere widget.
  FocusNode? didyoureachtargetIfnotwhatwereFocusNode;
  TextEditingController? didyoureachtargetIfnotwhatwereController;
  String? Function(BuildContext, String?)?
      didyoureachtargetIfnotwhatwereControllerValidator;
  // State field(s) for Howmanyflyersdidiyougiveouttoday widget.
  FocusNode? howmanyflyersdidiyougiveouttodayFocusNode;
  TextEditingController? howmanyflyersdidiyougiveouttodayController;
  String? Function(BuildContext, String?)?
      howmanyflyersdidiyougiveouttodayControllerValidator;
  // State field(s) for Nameofoutlets widget.
  FocusNode? nameofoutletsFocusNode;
  TextEditingController? nameofoutletsController;
  String? Function(BuildContext, String?)? nameofoutletsControllerValidator;
  DateTime? datePicked;
  // State field(s) for Totalnumberofconsumersapproached widget.
  FocusNode? totalnumberofconsumersapproachedFocusNode;
  TextEditingController? totalnumberofconsumersapproachedController;
  String? Function(BuildContext, String?)?
      totalnumberofconsumersapproachedControllerValidator;
  // State field(s) for Totalnumberofconsumerssampled widget.
  FocusNode? totalnumberofconsumerssampledFocusNode;
  TextEditingController? totalnumberofconsumerssampledController;
  String? Function(BuildContext, String?)?
      totalnumberofconsumerssampledControllerValidator;
  // State field(s) for Totalnumberofsales widget.
  FocusNode? totalnumberofsalesFocusNode;
  TextEditingController? totalnumberofsalesController;
  String? Function(BuildContext, String?)?
      totalnumberofsalesControllerValidator;
  // State field(s) for DropDownml widget.
  String? dropDownmlValue;
  FormFieldController<String>? dropDownmlValueController;
  // State field(s) for Whichproductwasthemaincompetitor widget.
  FocusNode? whichproductwasthemaincompetitorFocusNode;
  TextEditingController? whichproductwasthemaincompetitorController;
  String? Function(BuildContext, String?)?
      whichproductwasthemaincompetitorControllerValidator;
  // State field(s) for Anycompectitoractivity widget.
  FocusNode? anycompectitoractivityFocusNode;
  TextEditingController? anycompectitoractivityController;
  String? Function(BuildContext, String?)?
      anycompectitoractivityControllerValidator;
  // State field(s) for Positivecommentsonthefocusbrand widget.
  FocusNode? positivecommentsonthefocusbrandFocusNode;
  TextEditingController? positivecommentsonthefocusbrandController;
  String? Function(BuildContext, String?)?
      positivecommentsonthefocusbrandControllerValidator;
  // State field(s) for Negativecommentsonthefocusbrand widget.
  FocusNode? negativecommentsonthefocusbrandFocusNode;
  TextEditingController? negativecommentsonthefocusbrandController;
  String? Function(BuildContext, String?)?
      negativecommentsonthefocusbrandControllerValidator;
  // State field(s) for Mostfrequentlyaskedquestions widget.
  FocusNode? mostfrequentlyaskedquestionsFocusNode;
  TextEditingController? mostfrequentlyaskedquestionsController;
  String? Function(BuildContext, String?)?
      mostfrequentlyaskedquestionsControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    texthoursworkedFocusNode?.dispose();
    texthoursworkedController?.dispose();

    noOfStaffOnStandInputFocusNode?.dispose();
    noOfStaffOnStandInputController?.dispose();

    textWhatisthemainpurposeoftheactivationFieldFocusNode?.dispose();
    textWhatisthemainpurposeoftheactivationFieldController?.dispose();

    describethelayoutofthestandortheFocusNode?.dispose();
    describethelayoutofthestandortheController?.dispose();

    whatarethepositiveconsumercommentsFocusNode?.dispose();
    whatarethepositiveconsumercommentsController?.dispose();

    whatarethenegativeconsumercommentsFocusNode?.dispose();
    whatarethenegativeconsumercommentsController?.dispose();

    whatarethechallengesyouFocusNode?.dispose();
    whatarethechallengesyouController?.dispose();

    whatwerethefrequentlyaskedFocusNode?.dispose();
    whatwerethefrequentlyaskedController?.dispose();

    whatdoyousuggestweimproveforFocusNode?.dispose();
    whatdoyousuggestweimproveforController?.dispose();

    whatdoyousuggestweimproveforfutureactivationspleasebedetailedFocusNode
        ?.dispose();
    whatdoyousuggestweimproveforfutureactivationspleasebedetailedController
        ?.dispose();

    didyoureachtargetIfnotwhatwereFocusNode?.dispose();
    didyoureachtargetIfnotwhatwereController?.dispose();

    howmanyflyersdidiyougiveouttodayFocusNode?.dispose();
    howmanyflyersdidiyougiveouttodayController?.dispose();

    nameofoutletsFocusNode?.dispose();
    nameofoutletsController?.dispose();

    totalnumberofconsumersapproachedFocusNode?.dispose();
    totalnumberofconsumersapproachedController?.dispose();

    totalnumberofconsumerssampledFocusNode?.dispose();
    totalnumberofconsumerssampledController?.dispose();

    totalnumberofsalesFocusNode?.dispose();
    totalnumberofsalesController?.dispose();

    whichproductwasthemaincompetitorFocusNode?.dispose();
    whichproductwasthemaincompetitorController?.dispose();

    anycompectitoractivityFocusNode?.dispose();
    anycompectitoractivityController?.dispose();

    positivecommentsonthefocusbrandFocusNode?.dispose();
    positivecommentsonthefocusbrandController?.dispose();

    negativecommentsonthefocusbrandFocusNode?.dispose();
    negativecommentsonthefocusbrandController?.dispose();

    mostfrequentlyaskedquestionsFocusNode?.dispose();
    mostfrequentlyaskedquestionsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Clicked = prefs.getBool('ff_Clicked') ?? _Clicked;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _AcceptOrDecline = false;
  bool get AcceptOrDecline => _AcceptOrDecline;
  set AcceptOrDecline(bool _value) {
    _AcceptOrDecline = _value;
  }

  double _Amountdue = 0.0;
  double get Amountdue => _Amountdue;
  set Amountdue(double _value) {
    _Amountdue = _value;
  }

  bool _SignLogin = false;
  bool get SignLogin => _SignLogin;
  set SignLogin(bool _value) {
    _SignLogin = _value;
  }

  String _HOURS = '';
  String get HOURS => _HOURS;
  set HOURS(String _value) {
    _HOURS = _value;
  }

  int _HoursState = 0;
  int get HoursState => _HoursState;
  set HoursState(int _value) {
    _HoursState = _value;
  }

  bool _Clicked = false;
  bool get Clicked => _Clicked;
  set Clicked(bool _value) {
    _Clicked = _value;
    prefs.setBool('ff_Clicked', _value);
  }

  double _usererating = 0.0;
  double get usererating => _usererating;
  set usererating(double _value) {
    _usererating = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

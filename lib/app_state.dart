import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _menuItems = ['Home', 'Search', 'Directory', 'Profile'];
  List<String> get menuItems => _menuItems;
  set menuItems(List<String> _value) {
    _menuItems = _value;
  }

  void addToMenuItems(String _value) {
    _menuItems.add(_value);
  }

  void removeFromMenuItems(String _value) {
    _menuItems.remove(_value);
  }

  void removeAtIndexFromMenuItems(int _index) {
    _menuItems.removeAt(_index);
  }

  void updateMenuItemsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _menuItems[_index] = updateFn(_menuItems[_index]);
  }

  String _menuActiveItem = 'Home';
  String get menuActiveItem => _menuActiveItem;
  set menuActiveItem(String _value) {
    _menuActiveItem = _value;
  }

  List<Color> _menuItemColors = [
    Color(4283120111),
    Color(4281979584),
    Color(4293823328),
    Color(4294924643),
    Color(4287566292)
  ];
  List<Color> get menuItemColors => _menuItemColors;
  set menuItemColors(List<Color> _value) {
    _menuItemColors = _value;
  }

  void addToMenuItemColors(Color _value) {
    _menuItemColors.add(_value);
  }

  void removeFromMenuItemColors(Color _value) {
    _menuItemColors.remove(_value);
  }

  void removeAtIndexFromMenuItemColors(int _index) {
    _menuItemColors.removeAt(_index);
  }

  void updateMenuItemColorsAtIndex(
    int _index,
    Color Function(Color) updateFn,
  ) {
    _menuItemColors[_index] = updateFn(_menuItemColors[_index]);
  }

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool _value) {
    _drawer = _value;
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

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

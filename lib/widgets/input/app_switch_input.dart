import 'package:flutter/material.dart';

class AppSwitchInput extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final IconData? selectedIcon;
  final IconData? unselectedIcon;
  final MaterialStateProperty<Color?>? overlayColor;
  final Color? activeColor;
  final Color? activeTrackColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final bool? useMaterial3;
  final num? spreadRadius;

  const AppSwitchInput({
    super.key,
    required this.value,
    required this.onChanged,
    this.overlayColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.selectedIcon,
    this.unselectedIcon,
    this.useMaterial3,
    this.spreadRadius,
  });

  const AppSwitchInput.m2({
    super.key,
    required this.value,
    required this.onChanged,
    this.overlayColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.spreadRadius,
  })  : useMaterial3 = false,
        selectedIcon = null,
        unselectedIcon = null;

  const AppSwitchInput.m2Icon({
    super.key,
    required this.value,
    required this.onChanged,
    this.overlayColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.selectedIcon,
    this.unselectedIcon,
    this.spreadRadius,
  }) : useMaterial3 = false;

  const AppSwitchInput.m3({
    super.key,
    required this.value,
    required this.onChanged,
    this.overlayColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.spreadRadius,
  })  : useMaterial3 = true,
        selectedIcon = null,
        unselectedIcon = null;

  const AppSwitchInput.m3Icon({
    super.key,
    required this.value,
    required this.onChanged,
    this.overlayColor,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.selectedIcon,
    this.unselectedIcon,
    this.spreadRadius,
  }) : useMaterial3 = true;

  @override
  _AppSwitchInputState createState() => _AppSwitchInputState();
}

class _AppSwitchInputState extends State<AppSwitchInput> {
  late MaterialStateProperty<Icon?> defaultThumbIcon;

  static final defaultOverlayColor =
      MaterialStateProperty.all<Color?>(Colors.black12);

  static const defaultActiveColor = Colors.blue;

  static final defaultActiveTrackColor = Colors.red;
  static final defaultInactiveThumbColor = Colors.deepPurple;
  static final defaultInactiveTrackColor = Colors.tealAccent;
  late bool _value;

  @override
  void initState() {
    _value = widget.value;
    widget.onChanged(_value);
    defaultThumbIcon = MaterialStateProperty.resolveWith<Icon?>(
      (Set<MaterialState> states) {
        // Thumb icon when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Icon(
            widget.selectedIcon,
            color: Colors.white,
          );
        }
        return Icon(
          widget.unselectedIcon,
          color: Colors.grey,
        );
      },
    );
    print(_value);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppSwitchInput oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _value = widget.value;
      widget.onChanged(_value);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: widget.useMaterial3, // enable Material 3  Q
      ),
      child: Switch(
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
          widget.onChanged(value); // call the onChanged callback here
        },
        thumbIcon: defaultThumbIcon,
        overlayColor: widget.overlayColor ?? defaultOverlayColor,
        activeColor: widget.activeColor ?? Colors.black,
        activeTrackColor: widget.activeTrackColor ?? defaultActiveTrackColor,
        inactiveThumbColor:
            widget.inactiveThumbColor ?? defaultInactiveThumbColor,
        inactiveTrackColor:
            widget.inactiveTrackColor ?? defaultInactiveTrackColor,
        splashRadius: widget.spreadRadius as double,
      ),
    );
  }
}
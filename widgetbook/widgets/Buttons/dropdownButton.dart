import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample(this.list, this.icon, this.elevation, this.textColor, {super.key, this.dropDownColor});
  final List<String>? list;
  final Icon? icon;
  final int? elevation;
  final Color? textColor;
  final Color? dropDownColor;

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  late String dropdownValue='Select...';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon:  Icon(Icons.arrow_drop_down_sharp),
      elevation: widget.elevation??16,
      dropdownColor: widget.dropDownColor??Colors.white60,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: widget.list!.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),

        );
      }).toList() ?? [],
    );
  }
}
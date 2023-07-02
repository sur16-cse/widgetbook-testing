import 'package:flutter/material.dart';

class AppPopUpMenuButton extends StatefulWidget {
  final String? label;
  final List<String>? menuItems;
  final Function(String)? onItemSelected;
  final Color? textColor;
  final double? fontSize;
  final IconData? icon;
  final bool? showSelected;
  final String? tooltip;
  final double? elevation;
  final double? offset;

  const AppPopUpMenuButton(
      {Key? key,
      this.label,
      this.menuItems,
      this.onItemSelected,
      this.textColor,
      this.fontSize,
      this.icon,
      this.showSelected,
      this.tooltip,
      this.elevation,
      this.offset})
      : super(key: key);

  @override
  _AppPopUpMenuButtonState createState() => _AppPopUpMenuButtonState();
}

class _AppPopUpMenuButtonState extends State<AppPopUpMenuButton> {
  late String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.menuItems?.first ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String selectedItem) {
        setState(() {
          _selectedItem = selectedItem;
        });
        widget.onItemSelected!(selectedItem);
      },
      itemBuilder: (BuildContext context) {
        return widget.menuItems
                ?.map((String item) => PopupMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                          color: widget.textColor,
                          fontSize: widget.fontSize,
                        ),
                      ),
                    ))
                .toList() ??
            [];
      },
      elevation: widget.elevation,
      onCanceled: () {
        const AlertDialog(
          content: Text('you have not canceled the menu'),
        );
      },
      tooltip: widget.tooltip,
      child: widget.showSelected != null
          ? Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5.0),
              ),
              // width: 50,
              child: FittedBox(
                child: Row(
                  children: [
                    Text(
                      widget.label ?? '',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Icon(Icons.arrow_drop_down),
                    const SizedBox(width: 8.0),
                    Text(
                      _selectedItem!,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }
}
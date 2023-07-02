import 'package:flutter/material.dart';

class AdvancedExpansionPanelList extends StatefulWidget {
  final List<ExpansionPanelItem> items;

  const AdvancedExpansionPanelList({required this.items});

  @override
  _AdvancedExpansionPanelListState createState() =>
      _AdvancedExpansionPanelListState();
}

class _AdvancedExpansionPanelListState
    extends State<AdvancedExpansionPanelList> {
  late List<bool> _isExpandedList;

  @override
  void initState() {
    super.initState();
    _isExpandedList =
        List.generate(widget.items.length, (_) => false, growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpandedList[index] = !isExpanded;
        });
      },
      children: widget.items.map<ExpansionPanel>((ExpansionPanelItem item) {
        final Widget header = ListTile(
          title: Text(item.headerText),
          subtitle: item.subtitleText != null
              ? Text(item.subtitleText!)
              : null,
          leading: item.leadingIcon != null ? Icon(item.leadingIcon) : null,
        );

        return ExpansionPanel(
          canTapOnHeader: true,
          isExpanded: _isExpandedList[widget.items.indexOf(item)],
          headerBuilder: (BuildContext context, bool isExpanded) => header,
          body: item.body,
        );
      }).toList(),
    );
  }
}

class ExpansionPanelItem {
  final String headerText;
  final String? subtitleText;
  final IconData? leadingIcon;
  final Widget body;

  ExpansionPanelItem(
      {required this.headerText,
        this.subtitleText,
        this.leadingIcon,
        required this.body});
}
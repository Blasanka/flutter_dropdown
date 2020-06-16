import 'package:flutter/material.dart';

enum DropDownType {
  FormField,
  PopUpMenu,
  Button,
}

class DropDown<T> extends StatefulWidget {
  final DropDownType dropDownType;
  final List<T> items;
  /// If needs to render custom widgets for dropdown items must provide values for customWidgets
  /// Also the customWidgets length have to be equals to items
  final List<Widget> customWidgets;
  final T initialValue;
  final Widget hint;
  final Function onChanged;
  final bool isExpanded;
  /// If need to clear dropdown currently selected value
  final bool isCleared;

  DropDown({
    this.dropDownType = DropDownType.Button,
    this.items,
    this.customWidgets,
    this.initialValue,
    this.hint,
    this.onChanged,
    this.isExpanded = false,
    this.isCleared = false,
  }) : assert(items != null && !(items is Widget)),
      assert((customWidgets != null) ? items.length == customWidgets.length : (customWidgets == null));

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState<T> extends State<DropDown<T>> {
  
  T selectedValue;
  
  @override
  void initState() {
    selectedValue = widget.initialValue;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    switch (widget.dropDownType) {
      case DropDownType.FormField:
        return SizedBox();
      case DropDownType.PopUpMenu:
        return SizedBox();
      case DropDownType.Button:
      default:
        return DropdownButton<T>(
          isExpanded: widget.isExpanded,
          onChanged: (T value) {
            setState(() => selectedValue = value);
            if (widget.onChanged != null) widget.onChanged(value);
          },
          value: widget.isCleared ? null : selectedValue,
          items: widget.isCleared
              ? null
              : widget.items.map<DropdownMenuItem<T>>((item) => buildDropDownItem(item)).toList(),
          hint: widget.hint,
        );
    }
  }

  DropdownMenuItem<T> buildDropDownItem(T item) =>
      DropdownMenuItem<T>(
        child: (widget.customWidgets != null)
            ? widget.customWidgets[widget.items.indexOf(item)]
            : Text(item.toString()),
        value: item,
      );
}

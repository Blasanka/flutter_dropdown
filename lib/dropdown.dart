import 'package:flutter/material.dart';

enum DropDownType {
  FormField,
  PopUpMenu,
  Button,
}

class DropDown extends StatefulWidget {
  final DropDownType dropDownType;
  final List<String> items;
  final String hint;
  final Function onChange;

  DropDown({
    this.dropDownType = DropDownType.Button,
    this.items,
    this.hint,
    this.onChange,
  }) : assert(dropDownType != null),
      assert(items != null),
      assert(onChange != null);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  
  String selectedValue;
  
  @override
  void initState() {
    selectedValue = widget.items.first;
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
        return DropdownButton(
          onChanged: (String value) {
            selectedValue = value;
            setState(() {});
            widget.onChange(value);
          },
          value: selectedValue,
          items: widget.items.map<DropdownMenuItem<String>>((item) => buildDropDownItem(item)).toList(),
          hint: Text(widget.hint),
        );
    }
  }

  DropdownMenuItem<String> buildDropDownItem(String item) =>
      DropdownMenuItem<String>(
        child: Text(item),
        value: item,
      );
}

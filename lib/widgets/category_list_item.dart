import 'package:flutter/material.dart';
import 'package:spoons/constants/colors.dart';
import 'package:spoons/constants/text_styles.dart';

class CategoryItemContainer extends StatefulWidget {
  final String itemname;
  final int selectedIndex;
  final int currentindex;
  const CategoryItemContainer({super.key, required this.itemname,required this.selectedIndex,required this.currentindex});

  @override
  State<CategoryItemContainer> createState() => _CategoryItemContainerState();
}

class _CategoryItemContainerState extends State<CategoryItemContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: widget.selectedIndex==widget.currentindex ? Colours.primaryColour : Colors.grey,
            border: widget.selectedIndex==widget.currentindex ? Border.all(color: Colours.textColor) : null,
            ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              widget.itemname,
              style: AppTextStyles.categoryItemNameStyle,
            ),
          ),
        ),
      ),
    );
  }
}

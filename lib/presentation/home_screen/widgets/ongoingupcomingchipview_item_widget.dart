import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

import '../../../theme/theme_helper.dart';

class OngoingupcomingchipviewItemWidget extends StatefulWidget {
  final String text;
  final bool isSelected;

  const OngoingupcomingchipviewItemWidget({
    Key? key,
    required this.text,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _OngoingupcomingchipviewItemWidgetState createState() =>
      _OngoingupcomingchipviewItemWidgetState();
}

class _OngoingupcomingchipviewItemWidgetState
    extends State<OngoingupcomingchipviewItemWidget> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        widget.text,
        style: TextStyle(
          color: _isSelected ? appTheme.whiteA700 : appTheme.blue80001,
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: _isSelected,
      backgroundColor: _isSelected ? appTheme.blue80001 : appTheme.whiteA700,
      selectedColor: appTheme.blue80001,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blue80001,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(15.h),
      ),
      onSelected: (value) {
        setState(() {
          _isSelected = value;
        });
      },
    );
  }
}

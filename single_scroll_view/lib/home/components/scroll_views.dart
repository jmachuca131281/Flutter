import 'package:flutter/material.dart';
import 'package:single_scroll_view/home/components/show_presidential.dart';

import '../../models/president.dart';

class ScrollViews extends StatelessWidget {
  const ScrollViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShowPresidential()
      ],
    );
  }
}

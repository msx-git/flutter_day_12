import 'package:flutter/material.dart';

import '/ui/entrance/widgets/navigate_button.dart';
import '/ui/ui_1/ui_1.dart';
import '/ui/ui_2/ui_2.dart';
import '/ui/ui_3/ui_3.dart';
import '/utils/extensions.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NavigateButton(title: 'UI - 1', navigateTo: UI1()),
          20.height,
          const NavigateButton(title: 'UI - 2', navigateTo: UI2()),
          20.height,
          const NavigateButton(title: 'UI - 3', navigateTo: UI3()),
        ],
      ),
    );
  }
}

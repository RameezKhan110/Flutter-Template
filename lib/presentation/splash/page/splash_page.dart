
import 'package:flutter/material.dart';
import 'package:nawa_app/presentation/splash/view/splash_view.dart';

import '../../../core/utils/responsive/responsive_view_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(mobile: SplashView());
  }
}

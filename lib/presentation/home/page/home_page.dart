
import 'package:flutter/material.dart';
import 'package:nawa_app/core/utils/responsive/responsive_view_widget.dart';
import 'package:nawa_app/presentation/home/view/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: HomeView());
  }
}

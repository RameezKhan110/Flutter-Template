
import 'package:flutter/material.dart';
import 'package:nawa_app/core/utils/responsive/responsive_view_widget.dart';
import 'package:nawa_app/presentation/search/view/search_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: SearchView());
  }
}

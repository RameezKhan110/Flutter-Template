import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nawa_app/presentation/bottom_navigation/bloc/bottom_navigation_cubit.dart';
import 'package:nawa_app/presentation/home/page/home_page.dart';
import 'package:nawa_app/presentation/search/page/search_page.dart';
import 'package:nawa_app/presentation/settings/page/settings_page.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({super.key});

  final List<Widget> _tabs = [const HomePage(), SearchPage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: BlocBuilder<BottomNavigationCubit, int>(
        builder: (context, currentIndex) {
          return _tabs[currentIndex];
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavigationCubit, int>(
        builder: (context, currentIndex) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              border: Border(
                top: BorderSide(color: Colors.transparent, width: 0),
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 0,
              // Remove shadow
              // selectedItemColor: AppColors.primaryColor,
              // unselectedItemColor: AppColors.secondaryColor,
              currentIndex: currentIndex,
              onTap: (index) =>
                  context.read<BottomNavigationCubit>().updatedIndex(index),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawa_app/core/utils/theme/app_theme.dart';
import 'package:nawa_app/presentation/bottom_navigation/bloc/bottom_navigation_cubit.dart';
import 'package:nawa_app/presentation/home/bloc/home_bloc.dart';

import 'core/utils/app_routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
        BlocProvider<BottomNavigationCubit>(create: (_) => BottomNavigationCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => child!,
        child: MaterialApp.router(
          theme: AppTheme.appTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.appRouter,
        ),
      ),
    );
  }
}

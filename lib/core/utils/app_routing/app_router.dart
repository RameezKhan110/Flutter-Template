import 'package:go_router/go_router.dart';
import 'package:nawa_app/core/utils/app_routing/app_paths.dart';
import 'package:nawa_app/core/utils/app_routing/app_routes_name.dart';
import 'package:nawa_app/presentation/bottom_navigation/bottom_navigation_view.dart';
import 'package:nawa_app/presentation/splash/page/splash_page.dart';

class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: AppPaths.splash,
    routes: [
      GoRoute(
        path: AppPaths.splash,
        name: AppRoutesName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppPaths.bottomNavigation,
        name: AppRoutesName.bottomNavigation,
        builder: (context, state) => BottomNavigationView(),
      ),
    ],
  );
}

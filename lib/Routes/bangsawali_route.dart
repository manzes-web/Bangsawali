import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/dashboard_page.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
import 'package:khatiwada_bangsawali_updated/Home/nav_bar.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Modes/modes.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Settings/settings.dart';
import 'package:khatiwada_bangsawali_updated/Profile/UserInfo/user_info_page.dart';
import 'package:khatiwada_bangsawali_updated/Routes/routes.dart';

final routerProvider = Provider((ref) {
  return GoRouter(initialLocation: Routes.home.path, routes: [
    GoRoute(
      path: Routes.home.path,
      name: Routes.home.name,
      builder: (context, state) => const HomeState(),
    ),
    GoRoute(
      path: Routes.dashboard.path,
      name: Routes.dashboard.name,
      builder: (context, state) => const Dashboard(),
    ),
    GoRoute(
      path: Routes.details.path,
      name: Routes.details.name,
      builder: (context, state) {
        String personName = state.pathParameters['personName']!;
        int bangshaNo = 1;
        return ViewDetails(
          personName: personName,
          bangshaNo: bangshaNo,
        );
      },
    ),
    GoRoute(
      path: Routes.profile.path,
      name: Routes.profile.name,
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      path: Routes.userInfo.path,
      name: Routes.userInfo.name,
      builder: (context, state) => const UserInfoPage(),
    ),
    GoRoute(
      path: Routes.settings.path,
      name: Routes.settings.name,
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      path: Routes.modes.path,
      name: Routes.modes.name,
      builder: (context, state) => const Modes(),
    ),
    GoRoute(
      path: Routes.language.path,
      name: Routes.language.name,
      builder: (context, state) => const Modes(),
    )
  ]);
});

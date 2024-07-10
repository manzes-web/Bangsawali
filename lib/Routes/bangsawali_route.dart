import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/dashboard_page.dart';
import 'package:khatiwada_bangsawali_updated/Dashboard/viewdetails.dart';
import 'package:khatiwada_bangsawali_updated/Home/nav_bar.dart';
import 'package:khatiwada_bangsawali_updated/Profile/Settings/settings.dart';
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
        routes: [
          GoRoute(
            path: Routes.details.path,
            name: Routes.details.name,
            builder: (context, state) => const ViewDetails(),
          )
        ]),
    GoRoute(
      path: Routes.profile.path,
      name: Routes.profile.name,
      builder: (context, state) => const Settings(),
    )
  ]);
});

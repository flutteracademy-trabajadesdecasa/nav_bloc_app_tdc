import 'package:go_router/go_router.dart';
import 'package:nav_bloc_app_tdc/ui/pages/home_page.dart';
import 'package:nav_bloc_app_tdc/ui/pages/other_page.dart';

enum AppRoutes {
  startApp,
  miHome,
  other,
}

final navegacion = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.startApp.name,
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
            path: 'other',
            name: AppRoutes.other.name,
            builder: (context, state) {
              return const OtherPage();
            },
            routes: [
              GoRoute(
                  path: 'soyUnHijodeOther',
                  name: 'soyUnHijodeOther',
                  builder: (context, state) {
                    return const OtherPage();
                  },
                  routes: []),
            ]),
        GoRoute(
          path: 'otherAlMismoLvl',
          name: 'otherAlMismoLvl',
          builder: (context, state) {
            return const OtherPage();
          },
          routes: [
            GoRoute(
              path: 'masRutas',
              name: 'masRutas',
              builder: (context, state) {
                return const OtherPage();
              },
            ),
          ],
        ),
        // GoRoute(
        //   path: '/',
        //   name: AppRoutes.miHome.name,
        //   builder: (context, state) {
        //     return const HomePage();
        //   },
        //   routes: [],
        // ),
      ],
    ),
  ],
);

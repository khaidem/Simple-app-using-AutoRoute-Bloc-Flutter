import 'package:auto_route/auto_route.dart';
import '../page/page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: HomePage),
    // AutoRoute(page: HomeDetailPage),
  ],
)
class $AppRouter {}

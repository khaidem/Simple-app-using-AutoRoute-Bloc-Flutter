import 'package:auto_route/auto_route.dart';
import 'package:simple_app/authflow/auth_flow.dart';

import '../page/page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: "/login",
    page: AuthFlow,
    initial: true,
    children: [
      AutoRoute(page: LoginPage),
      AutoRoute(page: HomePage),
      AutoRoute(page: SignUp),
    ],
  ),
])
class $AppRouter {}

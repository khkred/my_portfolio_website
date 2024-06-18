import 'package:go_router/go_router.dart';
import 'package:my_portfolio/constants/route_constants.dart';

import '../pages/home_page.dart';

final router = GoRouter(
    initialLocation: RouteConstants.home,
    routes: [
  GoRoute(
    path: RouteConstants.home,
    builder: (context, state) => const HomePage(),
  ),
]);

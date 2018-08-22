import 'package:angular_router/angular_router.dart';

class RoutePaths {
  static final register = RoutePath(path: 'register');

  static final login = RoutePath(path: 'login');

  static final register_user = RoutePath(
    path: '${register.path}/user',
  );

  static final register_driver = RoutePath(
    path: '${register.path}/driver',
  );
}

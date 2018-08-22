import 'package:angular_router/angular_router.dart';


import 'login/login_component.template.dart' as login_template;
import 'register/register_component.template.dart' as register_template;
import 'register-driver/register_driver_component.template.dart' as register_driver_template;
import 'register-user/register_user_component.template.dart' as register_user_template;

import 'route_paths.dart';
export 'route_paths.dart';

class Routes {
    static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );

  static final register = RouteDefinition(
    routePath: RoutePaths.register,
    component: register_template.RegisterComponentNgFactory,
  );

  static final register_user = RouteDefinition(
    routePath: RoutePaths.register_user,
    component: register_user_template.RegisterUserComponentNgFactory,
  );

  static final register_driver = RouteDefinition(
    routePath: RoutePaths.register_driver,
    component: register_driver_template.RegisterDriverComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    login,
    register,
    register_user,
    register_driver
  ];
}

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'routes.dart';

import 'nav-bar/nav_bar_component.dart';
import 'login/login_component.dart';
import 'register/register_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    routerDirectives,
    NavBarComponent,
    LoginComponent,
    RegisterComponent
  ],
  exports: [RoutePaths, Routes],
)
class AppComponent {}

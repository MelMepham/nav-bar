import 'package:angular/angular.dart';
import 'nav-bar/nav_bar_component.dart';
import 'login/login_component.dart';
import 'register/register_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [NavBarComponent, LoginComponent, RegisterComponent],
)
class AppComponent {}

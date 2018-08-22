import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import '../routes.dart';

@Component(
  selector: 'login-app',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  directives: [routerDirectives, coreDirectives, formDirectives],
  exports: [RoutePaths, Routes],
)
class LoginComponent {
bool submitted = false;

void onSubmit() => print(model.username);

Login model = Login('Username', 'Password');

Map<String, bool> setCssValidityClass(NgControl control) {
  final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
  return {validityClass: true};
}
}

class Login {
  String username, password;

  Login(this.username, this.password);

}

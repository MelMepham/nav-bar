import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import '../routes.dart';

@Component(
  selector: 'register-user-app',
  templateUrl: 'register_user_component.html',
  styleUrls: ['register_user_component.css'],
  directives: [routerDirectives, coreDirectives, formDirectives],
  exports: [RoutePaths, Routes],
)
class RegisterUserComponent {
  bool passwordMatches = true;
  bool emailValid = true;
  bool wasSucessful = false;

  NewDriver model = NewDriver(
      'First Name',
      'Family Name',
      'E-mail',
      'Password',
      'Confirm Password');

  void onSubmit() {
    (model.password == model.confirmPassword)
        ? passwordMatches = true
        : passwordMatches = false;

    emailValid = RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(model.email);
  }

  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }
}

class NewDriver {
  String firstName,
      familyName,
      email,
      password,
      confirmPassword;

  NewDriver(this.firstName, this.familyName, this.email, this.password, this.confirmPassword);
}
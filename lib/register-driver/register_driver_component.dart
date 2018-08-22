import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import '../routes.dart';

@Component(
  selector: 'register-driver-app',
  templateUrl: 'register_driver_component.html',
  styleUrls: ['register_driver_component.css'],
  directives: [routerDirectives, coreDirectives, formDirectives],
  exports: [RoutePaths, Routes],
)
class RegisterDriverComponent {
  bool passwordMatches = true;
  bool emailValid = true;
  bool wasSucessful = false;

  NewDriver model = NewDriver(
      'First Name',
      'Family Name',
      'E-mail',
      'Drivers Licence',
      'Licence Version Number',
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
      driversLicence,
      licenceVer,
      password,
      confirmPassword;

  NewDriver(this.firstName, this.familyName, this.email, this.driversLicence,
      this.licenceVer, this.password, this.confirmPassword);
}

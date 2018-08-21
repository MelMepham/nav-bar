import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'register-modal',
  templateUrl: 'register_component.html',
  styleUrls: ['register_component.css'],
  directives: [coreDirectives, formDirectives],

)
class RegisterComponent {
  bool bannerIsShown = true;

  void closeBanner() {
    bannerIsShown = !bannerIsShown;
  }
}

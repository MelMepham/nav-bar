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
}

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'nav-bar',
  templateUrl: 'nav_bar_component.html',
  styleUrls: ['nav_bar_component.css'],
  directives: [routerDirectives, coreDirectives, formDirectives],
)
class NavBarComponent {
  bool notifications = false;
  bool menu = false;

  void onClickNotifications() {
    (menu == true) ? menu = false : null;
    notifications = !notifications;
    print(notifications);
  }

  void onClickMenu() {
    (notifications == true) ? notifications = false : null;
    menu = !menu;
    print(menu);
  }
}

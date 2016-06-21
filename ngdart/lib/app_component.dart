import 'package:angular2/core.dart';

import 'package:ngdart/header-component.dart';
import 'package:ngdart/sidebar_component.dart';
import 'package:ngdart/content_component.dart';


@Component(
  selector: 'my-app',
  template: '''
        <od-header (menuToggle) = "onSideBarToggle()"></od-header>
        <od-sidebar [ngClass] = "sidebarVisible ? 'visible' : 'hidden'"></od-sidebar>
        <od-content></od-content>''',
  directives: const [
      SidebarComponent,
      ContentComponent,
      HeaderComponent ]
)
class AppComponent {

    bool sidebarVisible = true;

    void onSideBarToggle() {
        sidebarVisible = ! sidebarVisible;
    }

}

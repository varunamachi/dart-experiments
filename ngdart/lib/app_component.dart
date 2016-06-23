import 'package:angular2/core.dart';

import 'package:ngdart/header_component.dart';
import 'package:ngdart/sidebar_component.dart';
import 'package:ngdart/content_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: "app_template.html",
    directives: const [
        SidebarComponent,
        ContentComponent,
        HeaderComponent ]
)
class AppComponent {
    bool sidebarVisible = true;

    @Input() String pageId = "-----";

    AppComponent() {
    }

    void onSideBarToggle() {
        sidebarVisible = ! sidebarVisible;
    }
}

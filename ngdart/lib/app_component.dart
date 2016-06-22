import 'package:angular2/core.dart';

import 'package:ngdart/header-component.dart';
import 'package:ngdart/sidebar_component.dart';
import 'package:ngdart/content_component.dart';


@Component(
  selector: 'my-app',
  template: '''
    <div id = "od-app">
        <od-header
            (menuToggle) = "onSideBarToggle()">
        </od-header>
        <od-sidebar
            [ngClass] = "sidebarVisible ? 'visible' : 'hidden'"
            (item-selected) = "onItemSelected(\$event)">
        </od-sidebar>
        <od-content>
        </od-content>
    </div>
        ''',
    directives: const [
            SidebarComponent,
            ContentComponent,
            HeaderComponent ],
    providers: const [
            ContentComponent]



)
class AppComponent {

    bool sidebarVisible = true;

    String pageId = "";

    String selectedId = "";

    ContentComponent contentArea;

    AppComponent(ContentComponent content) {
        this.contentArea = content;
    }

    void onSideBarToggle() {
        sidebarVisible = ! sidebarVisible;
    }

    void onItemSelected(String pageId) {
        this.pageId = pageId;
        contentArea.setPage(pageId);
        print("selected!! " + pageId);
    }

}

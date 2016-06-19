import 'package:angular2/core.dart';

import 'package:ngdart/sidebar_component.dart';
import 'package:ngdart/content_component.dart';

@Component(
  selector: 'my-app',
  template: '''<sidebar>Hello</sidebar>
             <content></content>''',
  directives: const [SidebarComponent, ContentComponent]
)
class AppComponent {
  
}

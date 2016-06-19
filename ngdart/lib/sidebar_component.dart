import 'package:angular2/core.dart';

@Component(
  selector: 'sidebar',
  template: '''<div class="sidebar">
                <ng-content></ng-content>
            </div>'''
)
class SidebarComponent {

}

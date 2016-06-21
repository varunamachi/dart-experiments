import 'package:angular2/core.dart';


@Component(
  selector: 'od-sidebar',
  templateUrl: 'sidebar-template.html'
)
class SidebarComponent {
    List<String> items = [
            'User',
            'Sources',
            'Variable',
            'User Groups',
            'Variable Groups'
    ];

    String selectedItem = "";

    void onSelected(String item) {
        this.selectedItem = item;
    }
}

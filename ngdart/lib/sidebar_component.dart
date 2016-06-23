import 'package:angular2/core.dart';


@Component(
  selector: 'od-sidebar',
  templateUrl: 'sidebar_template.html'
)
class SidebarComponent {
    List<String> items = [
            'User',
            'Sources',
            'Variable',
            'User Groups',
            'Variable Groups'
    ];

    @Input("selected") String selectedItem = "";

    @Output("selectedChange")
    EventEmitter<String> selectedItemChange = new EventEmitter();
}

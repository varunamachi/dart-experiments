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

    @Output("item-selected")
    EventEmitter<String> itemSelected = new EventEmitter();

    void onSelected(String item) {
        this.selectedItem = item;
        itemSelected.emit(selectedItem);
    }

    String getSeletedItem() {
        return selectedItem;
    }
}

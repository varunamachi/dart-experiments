import 'package:angular2/angular2.dart';


@Component(
    selector: 'od-header',
    templateUrl: 'header-template.html'
)
class HeaderComponent {
    List<String> headerItems = [
        "Settings",
        "Log In"
    ];

    bool _state = false;

    @Output() EventEmitter<bool> menuToggle = new EventEmitter();


    void onMenuToggle() {
        print("Pressed menu btn");
        _state = ! _state;
        menuToggle.emit(_state);
    }
}

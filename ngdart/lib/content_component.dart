import 'package:angular2/core.dart';

@Component(
    selector: 'od-content',
    template: '''
    <div id = "od-content">
        <div class = "center">
            <h1>{{currentPageId}}</h1>
        </div>
    </div>'''
)
class ContentComponent {
    @Input() String currentPageId ;
}

import 'package:angular2/core.dart';

@Component(
    selector: 'od-content',
    template: '''
    <div
        id= "od-content"
        class = "col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
        [innerHTML] = "currentPageId">

    </div>'''
)
class ContentComponent {
    @Input("curred-page") String currentPageId = "----------";

    void setPage(String pageId) {
        this.currentPageId = pageId;
        print(pageId);
    }
}

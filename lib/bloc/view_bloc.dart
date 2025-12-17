import 'package:bloc/bloc.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/service/view_page_service.dart';
import 'package:goerp/state/view_state.dart';


class ViewBloc extends Cubit<ViewState> {
  ViewBloc(this.viewPageService, this.categoryListService) : super(ViewState.initial());

  final ViewPageService viewPageService;
  final CategoryListService categoryListService;

  void init(String doc_number, String docName) async {

   print(doc_number );

    emit(ViewState.loading(state.viewList));
    final categoryList = await viewPageService.getViewPageDetails(doc_number, docName);
    emit(ViewState.content(categoryList));
  }



}

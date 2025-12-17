import 'package:bloc/bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/state/category_list_state.dart';

import '../model/category_list_model.dart';

class CategoryListBloc extends Cubit<CategoryListState> {
  CategoryListBloc(this.categoryListService, this.loginService)
      : super(CategoryListState.initial());

  final CategoryListService categoryListService;
  final LoginService loginService;

  var _categoryList = <CategoryListModel>[];

  void init() async {
    //final empCd = loginService.getUserEntry.employeeId;
    // final empCd = empCd;
   // print(empCd);

    final unitCd = loginService.getUserEntry.unitCode;
    //print(unitCd);
    emit(CategoryListState.loading(state.categoryList, state.unitListModel));
    final categoryList = await categoryListService.getCategoryList(empCd, unitCd);

    emit(CategoryListState.content(categoryList, state.unitListModel));
  }

  void filterBasedOn(String query) {
    if (query.isEmpty) {
      emit(CategoryListState.content(_categoryList, state.unitListModel));
    }
    final filteredComplaints = <CategoryListModel>[];
    for (CategoryListModel complaint in _categoryList) {
      if (complaint.isSearched(query)) filteredComplaints.add(complaint);
    }
    emit(CategoryListState.content(filteredComplaints, state.unitListModel));
  }
}

import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:goerp/model/category_list_model.dart';
import 'package:goerp/model/unitlist_model.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/state/category_list_state.dart';

import '../constant.dart';


class EachCategoryListBloc extends Cubit<CategoryListState> {
  EachCategoryListBloc(this.categoryListService, this.loginService) : super(CategoryListState.initial());

  final CategoryListService categoryListService;
  final LoginService loginService;

  var _categoryList = <CategoryListModel>[];

  void fetchData( String docType,String unitCode,[UnitListModel? unitListModel]) async {

   // final emp_cd = loginService.getUserEntry.employeeId;
    final unit_model = unitListModel?.unitcode;

    final doc_type = docType;
    // print(docType);
    // print(empCd);
    // print(unitCode);
    emit(CategoryListState.loading(state.categoryList, state.unitListModel));

    final categoryList = await categoryListService.getEachCategoryList(doc_type, empCd, unitCode);
    _categoryList = categoryList;
    emit(CategoryListState.content(categoryList, state.unitListModel));
  }

  void filterBasedOn(String query){
    if(query.isEmpty){
      emit(CategoryListState.content(_categoryList, state.unitListModel));
    }
    final filteredComplaints = <CategoryListModel>[];
    for(CategoryListModel complaint in _categoryList){
      if(complaint.isSearched(query)) filteredComplaints.add(complaint);
    }
    emit(CategoryListState.content(filteredComplaints, state.unitListModel));
  }


}

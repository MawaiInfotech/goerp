import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/category_list_bloc.dart';
import 'package:goerp/bloc/login_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/category_list_model.dart';
import 'package:goerp/pages/parchase_order_page.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/state/category_list_state.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';

import '../model/unitlist_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final CategoryListBloc bloc;

  late final CategoryListModel model;
  
  late final LogInPageBloc logInPageBloc;

  List images = [
    'assets/images/contract_requisition.png',
    'assets/images/contract_order.png',
    'assets/images/schedule.png',
    'assets/images/indent.png',
    'assets/images/purchase_order.png',
    'assets/images/slip.png',
    'assets/images/sale_order.png',
    'assets/images/sale_order.png',
    'assets/images/contract_requisition.png',
    'assets/images/contract_order.png',
    'assets/images/schedule.png',
    'assets/images/indent.png',
    'assets/images/purchase_order.png',
    'assets/images/slip.png',
    'assets/images/sale_order.png',
    'assets/images/sale_order.png',
    'assets/images/contract_requisition.png',
    'assets/images/contract_order.png',
    'assets/images/schedule.png',
    'assets/images/indent.png',
    'assets/images/purchase_order.png',
    'assets/images/slip.png',
    'assets/images/sale_order.png',
    'assets/images/sale_order.png',
    'assets/images/contract_requisition.png',
    'assets/images/contract_order.png',
    'assets/images/schedule.png',
    'assets/images/indent.png',
    'assets/images/purchase_order.png',
  ];

  @override
  void initState() {
    final categoryListService = Provider.of<CategoryListService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = CategoryListBloc(categoryListService, loginService);
    logInPageBloc = LogInPageBloc(loginService);
    bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: _buildBody());
  }

  _buildBody() {
    return BlocConsumer<CategoryListBloc, CategoryListState>(
      bloc: bloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __, _) => _buildContent(form, _));
      },
    );
  }

  Widget _buildLoading(List<CategoryListModel> model, UnitListModel unitListModel) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<CategoryListModel> model,  UnitListModel unitListModel) {
    return SafeArea(
      child: Column(
        children: [
          _buildCard(),
          _buildHeading(title: "PENDING DOCUMENTS FOR APPROVAL" ),
          _buildGridView(model),
        ],
      ),
    );
  }

  _buildHeading({required String title}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Text(
          title,
          style:  TextStyle(
              color: Colors.black, fontSize: 18.dw, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  _buildCompanyName({required String title, required String title1}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style:  TextStyle(
                  color: Colors.black, fontSize: 14.dw, fontWeight: FontWeight.w500),
            ),
            Text(
              "jfkejf fekrwk fekrek kfeokrek kferk oedoe fekdfkd fkdkfkdf fkkfdf kfdfk",
              maxLines: 2,
              style:  TextStyle(
                  color: Colors.black, fontSize: 14.dw, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  _buildCard() {
    return Container(
      padding: EdgeInsets.all(10.0.dh),
      child: Card(
        //color: AppColors.primary1,
        elevation: 10.0.dw,
        margin: EdgeInsets.all(10.0.dh),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
        ),
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$unitCd - $compName",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.dw,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridView(List<CategoryListModel> categoryList) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0.dh),
        child: GridView.builder(
          itemCount: categoryList.length,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            childAspectRatio: 6/7
          ), itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () async{
                final shouldInit =
                    await  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PurchaseOrder(
                        docType: categoryList[index].docType,
                        docName: categoryList[index].docName,
                        unit: categoryList[index].unit_cd,
                        model: categoryList[index],
                      ))).whenComplete(() => bloc.init());
              },
              child: Card(
                elevation: 10.0,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
                color: colors[index],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.dw),
                      child: SizedBox(
                        child: Image.asset(
                          images[index],
                          filterQuality: FilterQuality.high,
                          colorBlendMode: BlendMode.difference,
                          scale: 18.dw,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        categoryList[index].docName,
                        //pendingListDto.getAllCategory.elementAt(index).doc_name ??
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 2,
                        style:  TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12.dw, letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                      "Unit - " + categoryList[index].unit_cd,
                        //pendingListDto.getAllCategory.elementAt(index).doc_name ??
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 2,
                        style:  TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12.dw, letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                       categoryList[index].ctr.toString(),
                        //pendingListDto.getAllCategory.elementAt(index).poNumber ??
                        style:  TextStyle(
                            fontSize: 14.dw, color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
        },

        ),
      ),
    );
  }

}

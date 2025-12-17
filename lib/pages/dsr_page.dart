import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';

class DsrPage extends StatefulWidget {
  const DsrPage({super.key});

  @override
  State<DsrPage> createState() => _DsrPageState();
}

class _DsrPageState extends State<DsrPage> {

  TextEditingController dateinput = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  final List<DataRow> _rowList = [
    DataRow(cells: <DataCell>[
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Name of the Shop",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Area",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Discussion Point",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Qty",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Value",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Booking",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Collection Amt",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
      DataCell(Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
        child: SizedBox(
          child: TextField(
            controller: TextEditingController(),
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14.dw, color: AppColors.black),
            decoration: InputDecoration(
              hintText: "Remark",
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
            ),
          ),
        ),
      )),
    ]),
  ];

  void _addRow() {
    // Built in Flutter Method.
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below.
      _rowList.add(DataRow(cells: <DataCell>[
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Name of the Shop",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Area",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Discussion Point",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Qty",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Value",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Booking",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Collection Amt",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
        DataCell(Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
          child: SizedBox(
            child: TextField(
              controller: TextEditingController(),
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14.dw, color: AppColors.black),
              decoration: InputDecoration(
                hintText: "Remark",
                contentPadding: EdgeInsets.only(left: 8.dw),
                hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
                fillColor: Colors.transparent,
                filled: true,
              ),
            ),
          ),
        )),
      ]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Sales Report",style: TextStyle(
            fontSize: 20
        ),),
        backgroundColor: AppColors.red,
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _buildInfoCard(),
                _buildDataTable()
              ],
            ),
          )
      ),
    );
  }

  _buildInfoCard(){
    return Padding(
      padding: EdgeInsets.all(8.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth,
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: Row(
                  children: [
                    _buildheadingText("Daily Market Report of Mr."),
                    _buildText(":  "),
                   Container(
                     width: 150.dw,
                     padding: EdgeInsets.all(5.dw),
                     decoration: BoxDecoration(
                       border: Border.all(color: AppColors.black),
                       borderRadius: BorderRadius.circular(8.dw)
                     ),
                     child: const Text("Raman"),
                   )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: Row(
                  children: [
                    Row(
                      children: [
                        _buildheadingText("Area"),
                        _buildText(": "),
                        _buildTextField("Area", nameController)
                      ],
                    ),
                    Row(
                      children: [
                        _buildheadingText("Date"),
                        _buildText(":  "),
                        _buildCalender()
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSubmitButton(),
                  InkWell(
                      onTap: (){
                        _addRow();
                      },
                      child: Image.asset("assets/images/add.png", scale: 20.dw,))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

  _buildText( String title){
    return Text(title, style: TextStyle(fontSize: 12.dw),);
  }

  _buildheadingText( String title){
    return Padding(
      padding: EdgeInsets.all(8.0.dw),
      child: Text(title, style: TextStyle(fontSize: 14.dw, fontWeight: FontWeight.w500),),
    );
  }

  _buildTextField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: SizedBox(
        height: 40.dh,
        width: 100.dw,
        child: TextField(
          controller: controller,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 12.dw, color: AppColors.primary1),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: const EdgeInsets.only(left: 10),
            hintStyle:
            const TextStyle(fontSize: 12, color: AppColors.black),
            fillColor: Colors.transparent,
            filled: true,
            border: _border(),
             focusedBorder: _border(),
            enabledBorder: _border(),
            disabledBorder: _border()
          ),
        ),
      ),
    );
  }

  _buildCalender(){
    return  SizedBox(
        height: 40.dh,
        width: 120.dw,
        child:Center(
            child:TextField(
              controller: dateinput, //editing controller of this TextField
              decoration: InputDecoration(
                  hintText: "Select Date",
                  contentPadding: EdgeInsets.only( left: 10.dw),
                  border: _border(),
                  focusedBorder: _border(),
                  enabledBorder: _border()//icon of text field
              ),
              readOnly: true,  //set it true, so that user will not able to edit text
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101)
                );
                if(pickedDate != null ){
                  //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);

                  setState(() {
                    dateinput.text = formattedDate; //set output date to TextField value.
                  });
                }else{
                }
              },
            )
        )
    );
  }

  _buildSubmitButton(){
    return Padding(
      padding: EdgeInsets.all(8.0.dw),
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red,
          minimumSize: Size(100.dw, 40.dh),
          ),
          child: const Text("Submit")
      ),
    );
  }
  
  _buildDataTable(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        elevation: 10.dw,
        child: DataTable(
          headingRowColor: MaterialStateProperty.all(AppColors.pastelpink),
            border: TableBorder(
              top: const BorderSide(color: AppColors.black),
              bottom: const BorderSide(color: AppColors.black),
              left: const BorderSide(color: AppColors.black),
              right: const BorderSide(color: AppColors.black),
              horizontalInside: const BorderSide(color: AppColors.black),
              verticalInside: const BorderSide(color: AppColors.black),
              borderRadius: BorderRadius.circular(10.dw)
            ),
            columns: [
             _buildDataColumn("Name of Dealer/Shop"),
             _buildDataColumn("Area"),
             _buildDataColumn("Discussion Point"),
             _buildDataColumn("Order QTY"),
             _buildDataColumn("Order Value"),
             _buildDataColumn("Order Booked"),
             _buildDataColumn("Collection Amount"),
             _buildDataColumn("Remark"),
            ],
            rows: _rowList
            // [
            //  DataRow(cells: [
            //    DataCell(_buildTableTextField("Name of Shop", nameController)),
            //    DataCell(_buildTableTextField("Area", nameController)),
            //    DataCell(_buildTableTextField("Discussion Point", nameController)),
            //    DataCell(_buildTableTextField("OTY", nameController)),
            //    DataCell(_buildTableTextField("Value", nameController)),
            //    DataCell(_buildTableTextField("Booked", nameController)),
            //    DataCell(_buildTableTextField("Amount", nameController)),
            //    DataCell(_buildTableTextField("Remark", nameController)),
            //  ])
            // ]
        ),
      ),
    );
  }

  _buildDataColumn(String title){
    return  DataColumn(label: Text(title, style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),));
  }

  _buildTableTextField(String hintText, TextEditingController controller){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.dw),
      child: SizedBox(
        child: TextField(
          controller: controller,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 14.dw, color: AppColors.black),
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.only(left: 8.dw),
              hintStyle: TextStyle(fontSize: 14.dw, color: AppColors.darkgrey),
              fillColor: Colors.transparent,
              filled: true,
             // border: _border(),
              //focusedBorder: _border(),
              //enabledBorder: _border(),
              //disabledBorder: _border()
          ),
        ),
      ),
    );
  }


  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.dw),
      borderSide: const BorderSide(color: AppColors.black));

}

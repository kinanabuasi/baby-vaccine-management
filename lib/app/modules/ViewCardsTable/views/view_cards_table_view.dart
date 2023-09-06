// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_local_variable, avoid_print, unused_import, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, non_constant_identifier_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../linkapi.dart';
import '../controllers/view_cards_table_controller.dart';

class ViewCardsTableView extends StatelessWidget {
  ViewCardsTableView({Key? key}) : super(key: key);
  ViewCardsTableController viewCardsTableController =
      Get.put(ViewCardsTableController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Obx(
        () => Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Region')),
              DataColumn(label: Text('Governorate')),
            ],
            rows: viewCardsTableController.dataList.map((data) {
              return DataRow(cells: [
                DataCell(Text(data.Id.toString())),
                DataCell(Text(data.Name)),
                DataCell(Text(data.Region)),
                DataCell(
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          // Call editData method when the edit button is pressed
                          viewCardsTableController.editData(  3,
                               "Jad",
                              "AlHamraa",
                               "Damascus_Countryside",
                               10253,
                               "AlHamraa_center",
                               12052,
                               "10/12/2022",
                               "",
                               "Male");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Call deleteData method when the delete button is pressed
                         viewCardsTableController.deleteData(3,
                             );
                        },
                      ),
                    ],
                  ),
                ),
              ]);
            }).toList(),
          ),
        ),
      ),
 
    );
  }
}

// Model class for the data
class Data {
  final int Id;
  final String Name;
  final String Region;
  final String Governorate;
  final int Doses_Number;
  final String CenterName;
  final int centerNumber;
  final String birthDate;
  final String StatusLeaky;
  final String gender;

  Data({
    required this.Id,
    required this.Name,
    required this.Region,
    required this.Governorate,
    required this.Doses_Number,
    required this.CenterName,
    required this.centerNumber,
    required this.birthDate,
    required this.StatusLeaky,
    required this.gender,
  });
}

// Controller class to manage the state and actions
class ViewCardsTableController extends GetxController {
  RxList<Data> dataList = <Data>[].obs;

  @override
  void onInit() {
    // Fetch data from the database and populate the dataList
    fetchDataFromDatabase();
    super.onInit();
  }

  void fetchDataFromDatabase() {
    // Fetch data from your MySQL database using an API or other method
    // and populate the dataList with the retrieved data
    // For this example, we'll populate with dummy data

    dataList.value = [
      Data(
          Id: 1,
          Name: "Mark",
          Region: "Jaramanah",
          Governorate: "Damascus_Countryside",
          Doses_Number: 10255,
          CenterName: "Jaramanah_center",
          centerNumber: 12050,
          birthDate: "05/02/2021",
          StatusLeaky: "",
          gender: "Male"),
      Data(
          Id: 2,
          Name: "Tala",
          Region: "Mazzah",
          Governorate: "Damascus_Countryside",
          Doses_Number: 10258,
          CenterName: "Mazzah_center",
          centerNumber: 12051,
          birthDate: "08/04/2021",
          StatusLeaky: "",
          gender: "Female"),
      Data(
          Id: 3,
          Name: "Jad",
          Region: "AlHamraa",
          Governorate: "Damascus_Countryside",
          Doses_Number: 10253,
          CenterName: "AlHamraa_center",
          centerNumber: 12052,
          birthDate: "10/12/2022",
          StatusLeaky: "",
          gender: "Male"),
    ];
  }

  void addData(
      int id,
      String newName,
      String newRegion,
      String newGovernorate,
      int newDoses_Number,
      String newCenterName,
      int newcenterNumber,
      String newbirthDate,
      String newStatusLeaky,
      String newgender) {
    // Add new data to the database and update the dataList
    // For this example, we'll add it to the dataList directly

    int newId = dataList.isNotEmpty ? dataList.last.Id + 1 : 1;
    dataList.add(
      Data(
        Id: id,
        Name: newName,
        Region: newRegion,
        Governorate: newGovernorate,
        Doses_Number: newDoses_Number,
        CenterName: newCenterName,
        centerNumber: newcenterNumber,
        birthDate: newbirthDate,
        StatusLeaky: newStatusLeaky,
        gender: newgender,
      ),
    );
  }

  void editData(
      int id,
      String newName,
      String newRegion,
      String newGovernorate,
      int newDoses_Number,
      String newCenterName,
      int newcenterNumber,
      String newbirthDate,
      String newStatusLeaky,
      String newgender) {
    // Edit data in the database and update the dataList
    // For this example, we'll update it in the dataList directly

    int dataIndex = dataList.indexWhere((data) => data.Id == id);
    if (dataIndex != -1) {
      dataList[dataIndex] = Data(
        Id: id,
        Name: newName,
        Region: newRegion,
        Governorate: newGovernorate,
        Doses_Number: newDoses_Number,
        CenterName: newCenterName,
        centerNumber: newcenterNumber,
        birthDate: newbirthDate,
        StatusLeaky: newStatusLeaky,
        gender: newgender,
      );
    }
  }

  void deleteData(int id) {
    // Delete data from the database and update the dataList
    // For this example, we'll remove it from the dataList directly

    dataList.removeWhere((data) => data.Id == id);
  }
}

//   void _addData() {
//     Get.defaultDialog(
//       title: 'Add Data',
//       content: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(labelText: 'Name'),
//           ),
//           TextField(
//             decoration: InputDecoration(labelText: 'Description'),
//           ),
//         ],
//       ),
//       actions: [
//         ElevatedButton(
//           onPressed: () {
//             // Call the addData method in the controller when the dialog's button is pressed
//             Get.find<DataController>().addData('New Item', 'New Description');
//             Get.back();
//           },
//           child: Text('Add'),
//         ),
//         TextButton(
//           onPressed: () {
//             Get.back();
//           },
//           child: Text('Cancel'),
//         ),
//       ],
//     );
//   }

// }

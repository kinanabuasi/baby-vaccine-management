// // ignore_for_file: avoid_print

// import 'package:baby_lc/linkapi.dart';
// import 'package:get/get.dart';
// import '../../../../core/class/crud.dart';
// import '../../../../core/class/statusrequest.dart';
// import '../../HandlingData/controllers/handling_data_controller.dart';



// class GetRegionsofGovernorateController extends GetxController {
//   final crud = Get.put(Crud());

//   TestData testData = TestData(Get.find());

//   List data = [];

//   late StatusRequest statusRequest;

//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData();
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       print(data);
//       print("****************");
//       data.addAll(response['data']);
//       print(data);
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }

//   final count = 0.obs;

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void increment() => count.value++;
// }

// class TestData {
//   Crud crud;

//   TestData(this.crud);

//   getData() async {
//     var response = await crud.postData(AppLink.GetAllRegionTownSeeder, {});
//     return response.fold((l) => l, (r) => r);
//   }
// }
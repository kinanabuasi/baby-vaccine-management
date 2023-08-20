
import 'package:baby_lc/linkapi.dart';

import '../../../../core/class/crud.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username ,String email ,String phoneNumber,String password,
     String region,
     String addressTown,
     String detailedAddress,
       ) async {
    var response = await crud.postData(AppLink.CenterRepositoryInterface, { // AppLink.signUp from API
      "username" : username ,  
      "email" : email , 
      "phone" : phoneNumber , 
      "password" : password  ,
      "region" : region , 
      "addressTown" :addressTown , 
      "detailedAddress" : detailedAddress , 

    });
    return response.fold((l) => l, (r) => r);
  }
}

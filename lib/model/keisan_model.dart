import 'package:mvvm_test/viewmodel/view_model.dart';


import '../enum.dart';

class KeisanModel {

 Future<int> getKeisan({required COUNTTYPE countType, required int count}) async{

    if(countType == COUNTTYPE.PLUS){
     return  count += 1;
     print("Model+取れてるよ");

    }else{
      return  count -= 1;
       print("Model-取れてるよ");

    }
  }
}

import 'package:flutter/material.dart';
import 'package:mvvm_test/model/keisan_model.dart';

import '../enum.dart';

class KeisanViewModel extends ChangeNotifier {
  //カウントする処理を外注

  // final KeisanModel _keisanModel;
  //  KeisanViewModel({KeisanModel}): _keisanModel = KeisanModel;

  int _count = 0; //これは取れてる
  int get count => _count; //これでHomescreenからアクセス(カプセル化)

  COUNTTYPE _countType = COUNTTYPE.PLUS;

  COUNTTYPE get countType => _countType;

  Future<void> getCount({required COUNTTYPE countType}) async {
    _countType = countType;
    _count = count;
    _count =
        await KeisanModel().getKeisan(countType: _countType, count: _count);
    notifyListeners();

    //  KEISAN keisan = Keisan;
    // if(keisan == KEISAN.PLUS){
    //   _count++;
    // }else{
    //   _count--;
    // }

    // _count = await KeisanModel().getKeisan(keisan: keisan, count: count);

// Future<void> getCount({required KEISAN Keisan}) async{
//    KEISAN keisan = Keisan;
//   if(keisan == KEISAN.PLUS){
//     _count++;
//   }else{
//     _count--;
//   }
//
//    // _count = await KeisanModel().getKeisan(keisan: keisan, count: count);
//    notifyListeners();
  }
}

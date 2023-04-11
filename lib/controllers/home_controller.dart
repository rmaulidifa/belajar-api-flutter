import 'dart:developer';

import 'package:belajarapi/models/home_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  var nama = "Hikmatul";
  var count = 0.obs;
  var themeLight = true.obs;
  var isLoading = true.obs;

  HomeModel? datas;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    datas = await fetchData();
  }

  void increment() {
    count.value++;
    log(count.toString());
    // print(count);
  }

  void changeTheme() {
    themeLight.value = !themeLight.value;
  }

  //memanggil data yang ada di class HomeModel
  Future<HomeModel> fetchData() async {
    Dio dio = Dio();
    HomeModel model;

    var response = await dio.get("http://192.168.30.85:3000/member");
    model = HomeModel.fromJson(response.data);
    isLoading.value = false;
    return model;
  }
}
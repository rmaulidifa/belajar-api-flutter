import 'package:belajarapi/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          home: Scaffold(
            body: Center(
                child: controller.isLoading == true
                    ? CircularProgressIndicator()
                    : Container(
                        child: ListView.builder(
                        itemCount: controller.datas!.data!.length,
                        itemBuilder: ((context, index) => ListTile(
                              title: Text(controller.datas!.data![index].nama
                                  .toString()),
                            )),
                      ))),
          ),
        ));
  }
}
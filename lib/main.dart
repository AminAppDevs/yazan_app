import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yazan_app/controller/typehead.controller.dart';
import 'package:yazan_app/model/type.head.model.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final TypeHeadController typeHeadController = Get.put(TypeHeadController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {
              typeHeadController.getTypeHead();
            },
            child: const Text(
              'جلب البيانات',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Obx(() => typeHeadController.isLoading.value
            ? const Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              )
            : ListView.builder(
                itemCount: typeHeadController.typeHead.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsetsDirectional.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      children: [
                        Text(
                          typeHeadController.typeHead[index].resultObject.name
                              .toString(),
                        ),
                      ],
                    ),
                  );
                },
              )),
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:yazan_app/model/type.head.model.dart';
import 'package:yazan_app/services/app.services.dart';

class TypeHeadController extends GetxController {
  var typeHead = <Alltype>[].obs;
  var isLoading = false.obs;

  ///// get type head
  getTypeHead() {
    isLoading.value = true;
    update();
    AppServices.getTypeHead().then((value) {
      print(value!.results.alltype);
      typeHead.value = value.results.alltype;
      update();
      isLoading.value = false;
      update();
    });
  }
}

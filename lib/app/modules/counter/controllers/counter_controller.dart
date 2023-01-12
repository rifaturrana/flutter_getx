import 'package:get/get.dart';
import 'package:test_app/app/modules/counter/model/user_model.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  Rx<int> count = 0.obs;
  // Rx<UserModel?> usermodel = UserModel().obs;
  @override
  void onInit() {
    // usermodel.value = null;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void decrement() => count.value--;
}

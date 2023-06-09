import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:test_app/app/models/user.dart';

class UserController extends GetxController {
  List<User> users = <User>[].obs;
  // RxList<User> usersNames = <User>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<List<User>> fetchUsers() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/users');
    // users.value = (response.data as List).map((e) => User.fromJson(e)).toList();
    for (var i = 0; i < response.data.length; i++) {
      users.add(User.fromJson(response.data[i]));
    }

    return users;
  }
}

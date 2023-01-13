import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:test_app/app/models/posts.dart';

import '../../../models/user.dart';

class PostsController extends GetxController {
  List<Posts> posts = <Posts>[].obs;
  User singleUser = Get.arguments;
  late int userId = singleUser.id!;
  late RxString userName = singleUser.name!.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<List<Posts>> fetchPosts() async {
    try {
      var dio = Dio();
      var response = await dio
          .get('https://jsonplaceholder.typicode.com/posts?userId=$userId');

      for (var post in response.data) {
        posts.add(Posts.fromJson(post));
      }
      posts.sort((a, b) => a.title!.length.compareTo(b.title!.length));
    } catch (e) {
      print(e);
    }

    return posts;
  }
}

import 'package:get/get.dart';

import '../modules/Posts/bindings/posts_binding.dart';
import '../modules/Posts/views/posts_view.dart';
import '../modules/User/bindings/user_binding.dart';
import '../modules/User/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER;

  static final routes = [
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.POSTS,
      page: () => const PostsView(),
      binding: PostsBinding(),
    ),
  ];
}

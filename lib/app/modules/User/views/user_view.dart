import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Users List"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(
                () => controller.users.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: [
                          for (var user in controller.users)
                            InkWell(
                              onTap: (() {
                                Get.toNamed("/posts", arguments: user);
                              }),
                              child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        // color: Colors.grey,
                                        child: Row(children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            child: Icon(Icons.person),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.red,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              user.name! + "\n " + user.email!),
                                        ]),
                                      ),
                                      Divider(
                                        color: Colors.grey,
                                      )
                                    ],
                                  )),
                            ),
                        ],
                      ),
              )
            ],
          ),
        ));
  }
}

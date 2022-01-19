import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:app_getx/controller.dart';

class Other extends StatelessWidget {
  const Other({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("Other")),
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_getx/controller.dart';
import 'package:app_getx/other.dart';

void main() {
  const GetMaterialApp app = GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  );
  runApp(app);
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    const text = Text("Go to other");
    const otherWidget = Other();
    const addIcon = Icon(Icons.add);

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text("Click: ${c.count.value}")),
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: () => Get.to(otherWidget), child: text),
      ),
      floatingActionButton: FloatingActionButton(
        child: addIcon,
        onPressed: () => c.increment(),
      ),
    );
  }
}

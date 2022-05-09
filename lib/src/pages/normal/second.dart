import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
              child: Text("뒤로 이동"),
            ),
            RaisedButton(
              onPressed: () {
                // Get.to(Home());
                Get.offAll(Home());
              },
              child: Text("홈 이동"),
            ),
          ],
        ),
      ),
    );
  }
}

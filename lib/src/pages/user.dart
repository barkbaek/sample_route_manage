import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
              child: Text("뒤로 이동"),
            ),
          ],
        ),
      ),
    );
  }
}

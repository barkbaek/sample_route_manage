import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';
import 'state/with_getx.dart';
import 'state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Get.put(CountControllerWithGetx());

    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리 Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

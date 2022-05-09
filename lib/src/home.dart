import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/simple_state_manager_page.dart';

import 'pages/dependencys/dependency_manage_page.dart';
import 'pages/normal/first.dart';
import 'pages/reactive_state_manager_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));
                Get.to(FirstPage());
              },
              child: Text("일반적인 라우트"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
              child: Text("Named 라우트"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/next", arguments: "개남");
              },
              child: Text("Arguments 전달"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.toNamed("/user/13579");
              },
              child: Text("동적 URL 전달"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.to(SimpleStateManagePage());
              },
              child: Text("단순 상태관리"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.to(ReactiveStateManagePage());
              },
              child: Text("반응형 상태관리"),
            ),
            RaisedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/first");
                Get.to(DependencyManagePage());
              },
              child: Text("의존성 관리"),
            ),
          ],
        ),
      ),
    );
  }
}

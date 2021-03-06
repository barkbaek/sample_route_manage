import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Provider",
            style: TextStyle(fontSize: 50),
          ),
          Consumer<CountControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text(
                "${snapshot.count}",
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          RaisedButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              Provider.of<CountControllerWithProvider>(
                context,
                listen: false,
              ).increase();
            },
          ),
        ],
      ),
    );
  }
}

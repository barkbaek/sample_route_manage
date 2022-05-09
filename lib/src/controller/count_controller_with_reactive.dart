import 'package:get/get.dart';

// update를 해주지 않아도 obs를 사용하여 reactive 하게 만들 수 있다.
class CountControllerWithReactive {
  RxInt count = 0.obs;
  void increase() {
    count++;
  }

  void putNumber(int value) {
    count(value);
  }
}
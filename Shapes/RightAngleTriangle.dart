import 'Shape.dart';

class RightAngleTriangle extends Shape {
  RightAngleTriangle(super.area);

  void solidRightAngle() {
    for (int i = 1; i <= area; i++) {
      print((space * (area - i)) + (star * i));
    }
  }

  void outlineRightAngle() {
    for (int i = 1; i <= area; i++) {
      print((space * (area - i) +
          (i < area ? star : '') +
          (i < area ? (space * (i - 2)) : (space * 0)) +
          ((i > 1 && i < area ? star : '')) +
          (i == area ? (star * i) : '')));
    }
  }
}

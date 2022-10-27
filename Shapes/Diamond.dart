import 'Shape.dart';

class Diamond extends Shape {
  Diamond(super.area);

  void solidDiamond() {
    for (int i = 1; i <= area; i++) {
      print(
          (space * (area - i)) + (star * i) + (i > 1 ? (star * (i - 1)) : ''));
    }

    for (int i = 1; i < area; i++) {
      print((space * i) + (star * (area - i) + (star * (area - (i + 1)))));
    }
  }

  void outlineDiamond() {
    for (int i = 1; i <= area; i++) {
      print((space * (area - i)) +
          (star) +
          (space * (i - 1)) +
          (space * (i - 2) + (i > 1 ? star : '')));
    }

    for (int i = 1; i <= (area - 1); i++) {
      print((space * i) +
          (star) +
          (space * (area - (i + 1))) +
          (space * (area - (i + 2))) +
          (i == (area - 1) ? '' : star));
    }
  }
}

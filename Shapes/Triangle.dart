import 'Shape.dart';

class Triangle extends Shape {
  Triangle(super.area);

  void solidTriangle() {
    for (int i = 1; i <= area; i++) {
      print(
          (space * (area - i)) + (star * i) + (i > 1 ? (star * (i - 1)) : ''));
    }
  }

  void outlineTriangle() {
    for (int i = 1; i <= area; i++) {
      if (i == area) {
        print((star * i) + (star * (i - 1)));
        break;
      }
      print((space * (area - i)) +
          (star) +
          (space * (i - 1)) +
          (space * (i - 2) + (i > 1 ? star : '')));
    }
  }
}

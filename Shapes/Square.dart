import 'Shape.dart';

class Square extends Shape {
  Square(super.area);

  void solidSquare() {
    for (int i = 1; i <= area; i++) {
      print(star * area);
    }
  }

  void outlineSquare() {
    for (int i = 1; i <= area; i++) {
      print(
        ((i == 1 || i == area) ? (star * area) : '') + 
        ((i != 1 && i != area) ? (star + (space * (area - 2)) + star) : '')
      );
    }
  }
}

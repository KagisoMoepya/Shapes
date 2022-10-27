import 'dart:io';

import 'Shapes/Diamond.dart';
import 'Shapes/RightAngleTriangle.dart';
import 'Shapes/Square.dart';
import 'Shapes/Triangle.dart';

void main(List<String> args) {
  userPrompt();
}

void shapeSelectionAsk() {
  int maxLen = 22;
  print('Select The Shape Number: ');
  print('Square: ' + (' ' * (maxLen - 8)) + '[1]');
  print('Triangle: ' + (' ' * (maxLen - 10)) + '[2]');
  print('Right-Angle-Triangle: ' + (' ' * (maxLen - maxLen)) + '[3]');
  print('Diamond: ' + (' ' * (maxLen - 9)) + '[4]');
}

void shapeFillAsk() {
  int maxLen = 9;
  print('\nSelect The Shape Fill Number: ');
  print('Solid: ' + (' ' * (maxLen - 8)) + '[1]');
  print('Outline: ' + (' ' * (maxLen - maxLen)) + '[2]');
}

void areaAsk() {
  int maxLen = 9;
  print('\nSelect The Shape Size [e.g 5]: ');
}

int selectShape() {
  shapeSelectionAsk();
  stdout.writeln();
  String? shapeSelection = stdin.readLineSync() ?? '0';

  try {
    int shapeNumber = int.parse(shapeSelection);
    bool selectionBool = shapeNumber >= 1 && shapeNumber <= 4;

    if (!selectionBool) {
      invalidEntryMsg();
      return selectShape();
    }
    return shapeNumber;
  } catch (e) {
    invalidEntryMsg();
    return selectShape();
  }
}

int selectFill() {
  shapeFillAsk();
  stdout.writeln();
  String? shapeFill = stdin.readLineSync() ?? '0';

  try {
    int fillNumber = int.parse(shapeFill);
    bool fillBool = fillNumber >= 1 && fillNumber <= 2;
    if (!fillBool) {
      invalidEntryMsg();
      return selectFill();
    }
    return fillNumber;
  } catch (e) {
    invalidEntryMsg();
    return selectFill();
  }
}

int areaInput() {
  areaAsk();
  stdout.writeln();
  String? area = stdin.readLineSync() ?? '0';

  try {
    int areaNumber = int.parse(area);
    return areaNumber;
  } catch (e) {
    invalidEntryMsg();
    return areaInput();
  }
}

void userPrompt() {
  clearTerminal();
  int selectNumber = selectShape();
  int fillNumber = selectFill();
  int area = areaInput();
  clearTerminal();

  switch (selectNumber) {
    case 1:
      if (fillNumber == 1) {
        new Square(area).solidSquare();
      } else {
        new Square(area).outlineSquare();
      }
      break;
    case 2:
      if (fillNumber == 1) {
        new Triangle(area).solidTriangle();
      } else {
        new Triangle(area).outlineTriangle();
      }
      break;
    case 3:
      if (fillNumber == 1) {
        new RightAngleTriangle(area).solidRightAngle();
      } else {
        new RightAngleTriangle(area).outlineRightAngle();
      }
      break;
    case 4:
      if (fillNumber == 1) {
        new Diamond(area).solidDiamond();
      } else {
        new Diamond(area).outlineDiamond();
      }
      break;
  }
}

void invalidEntryMsg() {
  print('\nIncorrect Value Entry!!!\n');
}

void clearTerminal() {
  print("\x1B[2J\x1B[0;0H");
}

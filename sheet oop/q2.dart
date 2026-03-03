import 'dart:math';

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(7),
    Triangle(6, 4),
  ];

  double totalArea = 0;

  for (var shape in shapes) {
    totalArea += shape.area(); // polymorphism
  }

  double totalCost = calculateCost(totalArea);

  print("Total Area = ${totalArea.toStringAsFixed(2)}");
  print("Total Cost = ${totalCost.toStringAsFixed(2)}");
}

double calculateCost(double area) {
  double cost = 0;

  if (area <= 50) {
    cost = area * 1.50;
  } else if (area <= 150) {
    cost = (50 * 1.50) + ((area - 50) * 1.25);
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((area - 150) * 1.00);
  }

  return cost;
}

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;

  Rectangle(double width, double height) {
    if (width > 0 && height > 0) {
      _width = width;
      _height = height;
    } else {
      print("Invalid rectangle dimensions, keeping default.");
    }
  }

  @override
  double area() {
    return _width * _height;
  }
}

class Circle extends Shape {
  double _radius = 1;

  Circle(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalid circle radius, keeping default.");
    }
  }

  @override
  double area() {
    return pi * _radius * _radius;
  }
}

class Triangle extends Shape {
  double _base = 1;
  double _height = 1;

  Triangle(double base, double height) {
    if (base > 0 && height > 0) {
      _base = base;
      _height = height;
    } else {
      print("Invalid triangle dimensions, keeping default.");
    }
  }

  @override
  double area() {
    return 0.5 * _base * _height;
  }
}

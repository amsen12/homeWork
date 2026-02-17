import 'dart:math';

class Shape {
  double area() {
    return 0.0;
  }
}


class Square extends Shape {
  double _side;

  Square(double side) : _side = side {
    if (side <= 0) {
      print("Invalid side length! Keeping previous value.");
      _side = 1.0;
    }
  }

  @override
  double area() => _side * _side;
}

class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle(double width, double height)
      : _width = width,
        _height = height {
    if (width <= 0 || height <= 0) {
      print("Invalid rectangle dimensions! Keeping previous values.");
      _width = 1.0;
      _height = 1.0;
    }
  }

  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius;

  Circle(double radius) : _radius = radius {
    if (radius <= 0) {
      print("Invalid radius! Keeping previous value.");
      _radius = 1.0;
    }
  }

  @override
  double area() => pi * _radius * _radius;
}


double calculateCost(double totalArea) {
  double cost = 0.0;
  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = 50 * 1.50 + (totalArea - 50) * 1.25;
  } else {
    cost = 50 * 1.50 + 100 * 1.25 + (totalArea - 150) * 1.0;
  }
  return cost;
}


void main() {
  List<Shape> shapes = [
    Square(10),
    Rectangle(5, 12),
    Circle(7),
    Square(-3),
  ];

  double totalArea = 0.0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }

  double totalCost = calculateCost(totalArea);

  print("Total area: ${totalArea.toStringAsFixed(2)} units²");
  print("Total cost: \$${totalCost.toStringAsFixed(2)}");
}

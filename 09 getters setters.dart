void main() {
  final mySquare = Square(side: -9);

  print('Area: ${mySquare.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
      : assert(side > 0, 'Side must be greater than 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value: $value');
    if (value > 0) throw 'Value must be greater than 0';

    _side = value;
  }

  double calculateArea() => _side * _side;
}

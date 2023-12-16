void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Peter Parker',
    'power': 'Spider-ish',
    'isAlive': true
  };

  final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: true);

  final spiderman = Hero.fromJson(rawJson);

  print(ironman);
  print(spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'Unkown if alive';

  @override
  String toString() {
    return '$name, $power | ${isAlive ? 'Yes' : 'Nope'}';
  }
}

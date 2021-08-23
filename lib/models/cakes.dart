class Cake {
  String? codCake;
  String name;
  double? value;
  String? img;
  Map<String, String>? ingredients;
  Map<String, String>? steps;

  Cake(
      {this.codCake,
      required this.name,
      this.value,
      this.img,
      this.ingredients,
      this.steps}) {
    this.codCake = this.name + '01';
  }

  static List<Cake> getCake() {
    return <Cake>[
      Cake(name: 'Bolo de ninho'),
      Cake(name: 'Bolo de ninho com morango'),
      Cake(name: 'Bolo de ninho com abacaxi'),
      Cake(name: 'Bolo de brigadeiro'),
      Cake(name: 'Bolo de café'),
    ];
  }
}

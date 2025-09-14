class Product {
  String name;
  double price;
  int _stock;

  Product(this._name, this._price, this._stock);

  // Getter
  String get name => _name;

  // Setter with validation
  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      throw Exception("Price must be greater than 0");
    }
  }

  void restock(int amount) {
    _stock += amount;
  }

  void sell(int quantity) {
    if (quantity <= _stock) {
      _stock -= quantity;
    } else {
      throw Exception("Not enough stock");
    }
  }
}

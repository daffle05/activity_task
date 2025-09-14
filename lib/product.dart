class Product {
  String _name;
  double _price;
  int _stock;

  Product(this._name, this._price, this._stock);

  String get name => _name;

  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      throw Exception("Price must be greater than 0");
    }
  }

  void restock(int amount) {
    if (amount > 0) {
      _stock += amount;
      print("Restocked $amount items. Total stock: $_stock");
    } else {
      throw Exception("Restock amount must be greater than 0");
    }
  }

  void sell(int quantity) {
    if (quantity <= _stock && quantity > 0) {
      _stock -= quantity;
      print("Sold $quantity items. Remaining stock: $_stock");
    } else {
      throw Exception("Not enough stock or invalid quantity");
    }
  }

  void displayInfo() {
    print("Product: $_name");
    print("Price: \$$_price");
    print("Stock: $_stock");
  }
}

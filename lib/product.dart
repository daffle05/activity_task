class Product {
  // Private fields
  String _name;
  double _price;
  int _stock;
  String _category;

  // Constructor
  Product(this._name, this._price, this._stock, this._category);

  // Getter for product name
  String get name => _name;

  // Setter for price with validation
  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      throw Exception("Price must be greater than 0");
    }
  }

  double get price => _price;

  // Method to restock items
  void restock(int amount) {
    if (amount > 0) {
      _stock += amount;
      print("Restocked $amount items. Total stock: $_stock");
    } else {
      throw Exception("Restock amount must be greater than 0");
    }
  }

  // Method to sell items
  void sell(int quantity) {
    if (quantity <= 0) {
      throw Exception("Quantity must be greater than 0");
    }
    if (quantity <= _stock) {
      _stock -= quantity;
      print("Sold $quantity items. Remaining stock: $_stock");
    } else {
      throw Exception("Not enough stock to sell $quantity items.");
    }
  }

  // Method to display product info
  void displayInfo() {
    print("Product Name: $_name");
    print("Price: ₱$_price");
    print("Stock: $_stock");
    print("Category: $_category");
  }
}

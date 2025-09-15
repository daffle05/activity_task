import 'product.dart';

class PerishableProduct extends Product {
  // Unique property
  DateTime expirationDate;

  // Constructor uses super to call Product constructor
  PerishableProduct(
    String name,
    double price,
    int stock,
    String category,
    this.expirationDate,
  ) : super(name, price, stock, category);

  // Unique method to check if product is expired
  void checkExpiration() {
    DateTime today = DateTime.now();
    if (today.isAfter(expirationDate)) {
      print(" Product '$name' has expired on $expirationDate!");
    } else {
      print(" Product '$name' is still valid until $expirationDate.");
    }
  }

  // Override displayInfo to include expiration date
  @override
  void displayInfo() {
    super.displayInfo(); // call parent method
    print("Expiration Date: $expirationDate");
  }
}

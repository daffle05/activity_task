import 'product.dart';

class PerishableProduct extends Product {
  DateTime expirationDate;

  PerishableProduct(
    super.name,
    super.price,
    super.stock,
    super.category,
    this.expirationDate,
  );

  void checkExpiration() {
    DateTime today = DateTime.now();
    if (today.isAfter(expirationDate)) {
      print(" Product '$name' has expired on $expirationDate!");
    } else {
      print(" Product '$name' is still valid until $expirationDate.");
    }
  }

  @override
  void displayInfo() {
    super.displayInfo(); 
    print("Expiration Date: $expirationDate");
  }
}

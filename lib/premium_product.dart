import 'product.dart';

class PremiumProduct extends Product {
  double premiumFee;

  PremiumProduct(
    super.name,
    super.price,
    super.stock,
    super.category,
    this.premiumFee,
  );

  void showPremiumPrice() {
    double totalPrice = price + premiumFee;
    print("Premium Price of '$name': ₱$totalPrice (Base ₱$price + Fee ₱$premiumFee)");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Premium Fee: ₱$premiumFee");
    print("Total Price with Premium: ₱${price + premiumFee}");
  }
}

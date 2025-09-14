import 'product.dart';

class DiscountedProduct extends Product {
  double discountRate;
  int _myStock; // separate stock tracker (not touching Product’s private one)

  DiscountedProduct(
    String name,
    double price,
    int stock,
    String category,
    this.discountRate,
  )   : _myStock = stock, // initialize your own stock
        super(name, price, stock, category);

  double getDiscountedPrice() {
    return price * (1 - discountRate);
  }

  // Sell method that manages your own stock
  void sell(int quantity) {
    if (quantity <= 0) {
      throw Exception("Quantity must be greater than 0");
    }
    if (quantity <= _myStock) {
      _myStock -= quantity;
      print("Sold $quantity items (discounted). Remaining stock: $_myStock");
    } else {
      throw Exception("Not enough stock to sell $quantity items.");
    }
  }

  int getStock() => _myStock;
}

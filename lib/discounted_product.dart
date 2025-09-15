import 'product.dart';

class DiscountedProduct extends Product {
  double discountRate;
  int _myStock; 

  DiscountedProduct(
    String name,
    double price,
    int stock,
    String category,
    this.discountRate,
  )   : _myStock = stock, 
        super(name, price, stock, category);

  double getDiscountedPrice() {
    return price * (1 - discountRate);
  }

  @override
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

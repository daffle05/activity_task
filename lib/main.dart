import 'product.dart';

void main() {
  var product = Product("Gaming Mouse", 1500.0, 20, "Electronics");

  print("=== Initial Product Info ===");
  product.displayInfo();

  print("\n--- Restocking ---");
  product.restock(10);

  print("\n--- Selling ---");
  product.sell(5);

  print("\n--- Updating Price ---");
  product.price = 1700.0;
  print("Updated Price: ₱${product.price}");

  try {
    product.sell(50);
  } catch (e) {
    print("Error: $e");
  }

  try {
    product.price = -100; 
  } catch (e) {
    print("Error: $e");
  }

  print("\n=== Final Product Info ===");
  product.displayInfo();
}

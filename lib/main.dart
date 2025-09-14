import 'product.dart';

void main() {
  // Create a product
  var product = Product("Gaming Mouse", 1500.0, 20, "Electronics");

  print("=== Initial Product Info ===");
  product.displayInfo();

  // Test restocking
  print("\n--- Restocking ---");
  product.restock(10);

  // Test selling
  print("\n--- Selling ---");
  product.sell(5);

  // Test updating price
  print("\n--- Updating Price ---");
  product.price = 1700.0;
  print("Updated Price: ₱${product.price}");

  // Try invalid actions
  try {
    product.sell(50); // More than stock
  } catch (e) {
    print("Error: $e");
  }

  try {
    product.price = -100; // Invalid price
  } catch (e) {
    print("Error: $e");
  }

  print("\n=== Final Product Info ===");
  product.displayInfo();
}

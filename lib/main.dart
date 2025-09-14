import 'product.dart';

void main() {
  // Create a product object
  var product = Product("Laptop", 35000.0, 10);

  print("=== Initial Product Info ===");
  product.displayInfo();

  // Test restocking
  print("\n--- Restocking ---");
  product.restock(5);

  // Test selling
  print("\n--- Selling ---");
  product.sell(8);

  // Test price update with validation
  print("\n--- Updating Price ---");
  product.price = 37000.0;
  print("Updated price: ₱${product.price}");

  // Try invalid price (will throw an error)
  try {
    product.price = -500;
  } catch (e) {
    print("Error: $e");
  }

  print("\n=== Final Product Info ===");
  product.displayInfo();
}

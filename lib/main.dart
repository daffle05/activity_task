import 'product.dart';
import 'perishable_product.dart';
import 'discounted_product.dart';

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

  print("\n=== Perishable Product Demo ===");
  var milk = PerishableProduct(
    "Fresh Milk",
    75.0,
    50,
    "Dairy",
    DateTime(2025, 9, 20),
  );

  milk.displayInfo();
  milk.checkExpiration();

  print("\n--- Selling Perishable ---");
  milk.sell(10);
  milk.checkExpiration();

  print("\n=== Discounted Product Demo (no Product edits) ===");
  var discounted = DiscountedProduct("Phone", 20000, 5, "Electronics", 0.1);

  print("Original Price: ₱${discounted.price}");
  print("Discounted Price: ₱${discounted.getDiscountedPrice()}");

  discounted.sell(2);
  print("Remaining stock: ${discounted.getStock()}");
}


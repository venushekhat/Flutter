
void main() {
  // Create a new Set
  Set<String> fruits = {"Apple", "Banana", "Cherry"};

  // Add an item to the Set
  fruits.add("Date");

  // Try to add a duplicate item (will not be added)
  fruits.add("Apple");

  // Remove an item from the Set
  fruits.remove("Banana");

  // Check if an item is in the Set
  bool hasCherry = fruits.contains("Cherry");
  print("Contains Cherry: $hasCherry");

  // Iterate over the items in the Set
  print("Fruits in the Set:");
  for (var fruit in fruits) {
    print(fruit);
  }

  // Set operations
  Set<String> otherFruits = {"Elderberry", "Fig", "Grape"};
  Set<String> allFruits = fruits.union(otherFruits);
  print("All Fruits: $allFruits");

  Set<String> commonFruits = fruits.intersection(otherFruits);
  print("Common Fruits: $commonFruits");
}

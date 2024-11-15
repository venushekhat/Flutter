void main() {
  // Create a new Map
  Map<String, String> capitals = {
    "USA": "Washington, D.C.",
    "France": "Paris",
    "Japan": "Tokyo"
  };

  // Add an item to the Map
  capitals["Germany"] = "Berlin";

  // Update an existing item in the Map
  capitals["Japan"] = "Kyoto"; // This will overwrite the previous value

  // Remove an item from the Map
  capitals.remove("France");

  // Check if a key is in the Map
  bool hasUSA = capitals.containsKey("USA");
  print("Contains USA: $hasUSA");

  // Retrieve a value by key
  String? capitalOfJapan = capitals["Japan"];
  print("Capital of Japan: $capitalOfJapan");

  // Iterate over the Map's entries
  print("Capitals in the Map:");
  capitals.forEach((country, capital) {
    print("The capital of $country is $capital");
  });

  // Map operations
  Map<String, String> additionalCapitals = {"Italy": "Rome", "Spain": "Madrid"};

  // Merge two maps
  Map<String, String> allCapitals = {...capitals, ...additionalCapitals};
  print("All Capitals: $allCapitals");

  // Get the keys and values from the Map
  print("Keys: ${capitals.keys}");
  print("Values: ${capitals.values}");
}

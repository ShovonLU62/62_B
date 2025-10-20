void main() {
  Map<String, String> contacts = {
    "John": "1234",
    "Lina": "5678",
    "Alex": "9876",
    "Tommy": "5432"
  };

  print("Keys with length 4:");
  contacts.keys.where((key) => key.length == 4).forEach(print);
}

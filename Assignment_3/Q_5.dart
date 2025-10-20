void main() {
  List<String> friends = ["Anika", "Rafi", "Asif", "Sadia", "Arif", "Jamil", "Tania"];

  print("Friends whose name starts with 'A':");
  for (var friend in friends) {
    if (friend.toLowerCase().startsWith('a')) {
      print(friend);
    }
  }
}

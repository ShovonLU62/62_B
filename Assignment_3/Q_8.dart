import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n--- To-Do App ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter task to add: ");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added successfully!");
    } else if (choice == 2) {
      stdout.write("Enter task to remove: ");
      String task = stdin.readLineSync()!;
      tasks.remove(task);
      print("Task removed successfully!");
    } else if (choice == 3) {
      print("\nYour Tasks:");
      if (tasks.isEmpty) {
        print("No tasks yet!");
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } else if (choice == 4) {
      print("Exiting To-Do App...");
      break;
    } else {
      print("Invalid option, try again!");
    }
  }
}

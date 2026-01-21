import 'package:flutter/material.dart';
import 'Task_Model1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Task> tasks = [];
  final TextEditingController controller = TextEditingController();

  void addTask() {
    if (controller.text.isNotEmpty) {
      setState(() {
        tasks.add(Task(controller.text));
        controller.clear();
      });
    }
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void editTask(int index) {
    controller.text = tasks[index].title;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Edit Task"),
        content: TextField(controller: controller),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                tasks[index].title = controller.text;
                controller.clear();
              });
              Navigator.pop(context);
            },
            child: const Text("Update"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration:
                        const InputDecoration(hintText: "Enter task"),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTask,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (_, index) => Card(
                child: ListTile(
                  title: Text(tasks[index].title),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => editTask(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => deleteTask(index),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

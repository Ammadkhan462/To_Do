import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_task_dialog_box_controller.dart';

class AddTaskDialogBoxView extends GetView<AddTaskDialogBoxController> {
  const AddTaskDialogBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Schedule the dialog to show after the current build phase.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Get.isDialogOpen != true) { // Check to avoid showing the dialog multiple times.
        Get.defaultDialog(
          title: "Add Task",
          content: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Task Name"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Your button press functionality here
                  Get.back(); // Close the dialog
                },
                child: Text("Add"),
              ),
            ],
          ),
        );
      }
    });

    // Return a widget that should be the part of the screen where you want to show the dialog from.
    // For now, returning an empty Container as a placeholder.
    return Container();
  }
}

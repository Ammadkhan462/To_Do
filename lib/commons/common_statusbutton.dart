import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdownButton extends StatelessWidget {
  final String title;

  const CustomDropdownButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Adjust for rounded corners
        color:
            Colors.grey[800], // Use a color similar to your button's background
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Make background transparent
          shadowColor: Colors.transparent, // No shadow

          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8), // Adjust padding
          shape: RoundedRectangleBorder(
            // Rounded corners
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0, // Remove elevation
          textStyle: const TextStyle(color: Colors.white), // Text style
        ),
        icon: Expanded(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        label: const Icon(
          Icons.arrow_drop_down,
          color: Colors.white,
        ),
      ),
    ).marginOnly(right: 180, top: 10,);
  }
}

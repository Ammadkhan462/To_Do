import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String title;
  final IconData? icon;

  const CustomSearchBar({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Adjust the padding as needed
      child: TextField(
        style: const TextStyle(color: Colors.white), // Text style
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: Colors.white60), // Hint text style
          filled: true,
          fillColor: Colors.transparent, // Background color of the TextField
          prefixIcon: Icon(icon, color: Colors.white60), // Prefix search icon
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0), // Adjust the padding as needed
          border: OutlineInputBorder(
            // Normal border with rounded corners
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            // Enabled border with rounded corners
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white30, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            // Focused border with rounded corners
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
                color: Colors.blue, width: 1), // Adjust color as needed
          ),
        ),
      ),
    );
  }
}

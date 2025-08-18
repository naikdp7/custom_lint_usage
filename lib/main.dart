import 'package:flutter/material.dart';
void main() {
  runApp(ProfilePage());
}

class ProfilePage extends BasePage {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Profile Page',
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Example action
            print("Profile button pressed");
          },
          child: const Text('Go to Profile'),
        ),
      ],
    );
  }
}

abstract class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context);
}

import 'package:flutter/material.dart';
import './sign_in_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Login or Email'),
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Обробка скидання паролю
                      },
                      child: const Text("Reset Password"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}

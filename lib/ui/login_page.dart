import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'^[()\d -]{1,15}$'),
                    allow: true),
              ],
              decoration: InputDecoration(
                helperText: 'Phone format: (XXX)XXX-XXXX',
                prefixText: '8',
                prefixStyle: TextStyle(color: Colors.black, fontSize: 15),
                prefixIcon: const Icon(Icons.call),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, color: Colors.red)),
                labelText: 'Your Phone Number',
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextField(
              maxLength: 14,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, color: Colors.red)),
                labelText: 'Password',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

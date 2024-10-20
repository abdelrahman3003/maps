import 'package:flutter/material.dart';

class AppDialog {
  showSnackbar(BuildContext context,String message){
     WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.black,
              ),
            );
          });
  }
}
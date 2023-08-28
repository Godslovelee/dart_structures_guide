

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter search key-word"
            ),
            
          ),
        )
      ],
    );
  }

}
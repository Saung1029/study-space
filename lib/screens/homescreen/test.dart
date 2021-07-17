import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test'),),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
             const Text('First'),
            const Text('Second'),
        
        ],
      ),
    );
  }
}
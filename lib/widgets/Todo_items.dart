import 'package:flutter/material.dart';
import 'package:to_do_app/constants/Colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box,color: tdBlue,),
        title: Text('Check Mail'),
      ),
      );
  }
}
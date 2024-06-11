import 'package:flutter/material.dart';
import 'package:to_do_app/constants/Colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppbar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children:[
                  Container(
                    margin: EdgeInsets.only(top: 50,bottom:20 ),
                    child: Text('ALL ToDos',
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                      ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Serach',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
        ],
      ),
    );
  }
}

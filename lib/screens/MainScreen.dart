import 'package:dndify/widgets/AudioGridTile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget
{
  @override
  State<MainScreen> createState() {
    return new MainScreenState();
  }

}

class MainScreenState extends State<MainScreen>
{
  List<AudioGridTile> tiles=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DnDify",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent
      ),
      body: makeGridView(),
    );
  }

  GridView makeGridView()
  {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        AudioGridTile(),
        AudioGridTile(),
        AudioGridTile(),
        AudioGridTile(),
        AudioGridTile(),
        AudioGridTile(),
      ],
    );
  }
}
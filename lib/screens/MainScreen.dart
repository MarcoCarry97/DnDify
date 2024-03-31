import 'package:audioplayers/audioplayers.dart';
import 'package:dndify/widgets/AudioGridTile.dart';
import 'package:flutter/material.dart';
import 'dart:io';

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

  final AudioPlayer player=AudioPlayer();

  Function() onTap(Source source)
  {
    return ()
    {
      player.stop();
      player.play(source);
    };
  }

  @override
  Widget build(BuildContext context) {
    List<FileSystemEntity> files=readFiles();
    tiles=files.map<AudioGridTile>(mappingFunction).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("DnDify",style: TextStyle(color: Theme.of(context).colorScheme.background),),
        backgroundColor: Theme.of(context).colorScheme.primary
      ),
      body: makeGridView(),
    );
  }

  AudioGridTile mappingFunction(FileSystemEntity file)
  {
    DeviceFileSource source=DeviceFileSource(file.path);
    return AudioGridTile(audio: source, onTap: onTap);
  }

  List<FileSystemEntity> readFiles()
  {
    Directory dir=Directory("assets/audio/");
    return dir.listSync();
  }

  GridView makeGridView()
  {
    return GridView.count(
      crossAxisCount: 3,
      children: tiles
    );
  }
}
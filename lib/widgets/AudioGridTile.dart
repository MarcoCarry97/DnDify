import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioGridTile extends StatelessWidget
{
  final DeviceFileSource audio;

  final Function(Source) onTap;

  AudioGridTile({required this.audio, required this.onTap})
  {

  }

  @override
  Widget build(BuildContext context)
  {
    return Card(
        child: InkWell(
          onTap: onTap(audio),
          child: LayoutBuilder(builder: builderFunction(audio))
        ),
    );
  }

  String formatText(String text)
  {
    text=audio.path;
    List<String> parts=text.split("/");
    text=parts[parts.length-1];
    parts=text.split(".");
    text=parts[0];
    text=text.replaceAll("_"," ");
    return text;
  }

  Widget Function(BuildContext,BoxConstraints) builderFunction(DeviceFileSource audio)
  {
    double distance=5;
    String text=formatText(audio.path);
    return (BuildContext context,BoxConstraints constraints)
    {
      return Container(
        margin: EdgeInsets.all(distance),
        padding: EdgeInsets.all(distance),
        child: Column(
          children: [
            Icon(Icons.local_fire_department_rounded,color: Theme.of(context).colorScheme.primary,
                size: constraints.biggest.height/2),
            Center(child: Text(text, style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  textBaseline: TextBaseline.ideographic
                ),
              )
            )
          ],
        ),
      );
    };
  }


}
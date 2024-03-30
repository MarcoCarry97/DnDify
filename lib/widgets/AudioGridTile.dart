import 'package:flutter/material.dart';

class AudioGridTile extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {
    return Card(
        margin: EdgeInsets.all(2.0),
        child: InkWell(
          onTap: onTap,
            child: Container(
                  child: LayoutBuilder(
                    builder: (context,constraints)
                    {
                      return Icon(Icons.local_fire_department_rounded,color: Colors.redAccent,
                        size: constraints.biggest.height/2);
                    },
                  )
                )
              ),
        );
  }

  void onTap()
  {
    print("Tapped!");
  }

}
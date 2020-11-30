import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://vignette.wikia.nocookie.net/recreo/images/5/53/Imagen_tj.jpg/revision/latest/scale-to-width-down/180?cb=20171127035545&path-prefix=es'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              child: Text('XD'),
              backgroundColor: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}

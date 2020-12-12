import 'package:flutter/material.dart';




class MayasRetoPage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Drag and Drop Game',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: RetoPage(),
    );
  }
}

class RetoPage extends StatefulWidget {
  @override
  _RetoPageState createState() => _RetoPageState();
}

class _RetoPageState extends State<RetoPage> {
  List<ItemModel> items;
  List<ItemModel> items2;
  int score;
  bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(name: "Ch’íich’", value: "Ch’íich’", address: "🕊"),
      ItemModel(name: "Tsíimin", value: "Tsíimin", address: "🐴"),
      ItemModel(name: "T’eel", value: "T’eel", address: "🐓"),
      ItemModel(name: "K’áak’", value: "K’áak’", address: "🔥"),
      ItemModel(name: "P’óok", value: "P’óok", address: "🎩"),
      ItemModel(name: "K’iin", value: "K’iin", address: "🌞"),
      ItemModel(name: "K’éek’en", value: "K’éek’en", address: "🐷"),
      ItemModel(name: "P’aak", value: "P’aak", address: "🍅"),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

  @override
  Widget build(BuildContext context){
    if(items.length == 0)
      gameOver = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(
              children: [
                TextSpan(text: "Puntuación: ",style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                )),
                TextSpan(text: "$score", style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ))
              ]
            )),
            if(!gameOver)
            Row(
              children: <Widget>[
                Column(
                  children: items.map((item){
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Draggable<ItemModel>(
                        data: item,
                        childWhenDragging: Text(""),
                        feedback: Text(item.address,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50)),
                        child: Text(item.address,style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),)));
                  }).toList()
                ),
                Spacer(),
                Column(
                  children: items2.map((item){
                    return DragTarget<ItemModel>(
                      onAccept: (receivedItem) {
                        if(item.value == receivedItem.value) {
                          setState(() {
                            items.remove(receivedItem);
                            items2.remove(item);
                            score+=10;
                            item.accepting = false;
                          });
                        }else{
                          setState(() {
                            score-=5;
                            item.accepting = false;
                          });
                        }
                      },
                      onLeave: (receivedItem) {
                        setState(() {
                          item.accepting = false;
                        });
                      },
                      onWillAccept: (receivedItem) {
                        setState(() {
                          item.accepting = true;
                        });
                        return true;
                      },
                      builder: (context, acceptedItems, rejectedItems) => Container(
                        color: item.accepting ? Colors.deepPurple : Colors.deepPurple,
                        height: 50,
                        width: 100,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(8.0),
                        child: Text(item.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),)),
                    );
                  }).toList()
                ),
              ],
            ),
            if(gameOver)
            Text("Game Over", style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24.0
            ),),
            if(gameOver)
            RaisedButton(
              textColor: Colors.white,
              color: Colors.pink,
              child: Text("Nuevo Juego"),
              onPressed: (){
                initGame();
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}


class ItemModel {
  final String name;
  final String value;
  final String address;
  bool accepting;

  ItemModel({this.name, this.value, this.address, this.accepting=false});
}
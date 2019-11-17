import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

// hello

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        title: Text("FaceBook"),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(icon: Icon(Icons.forum, color: Colors.white,), onPressed: (){
                print('Message');
              },),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
              ),
            ],
          )
        ],
        backgroundColor: Color(0xff36538f),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return _buildCardItem(context, index);
      })

    );
  }
  _buildCardItem(context, index) {
    final shortText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting.";
    final longText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    return Card(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=${index % 70}'),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Amanda Chris', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('4 hrs ago', style: TextStyle(color: Colors.grey, fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.more_horiz, color: Colors.grey),
                    onPressed: () {
                      print("More ${index}");
                    },
                  ),
                ],
              ),
              SizedBox(height: 8),

              Text( index % 2 == 0 ? shortText : longText),

              SizedBox(height: 8),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://i.pravatar.cc/400?img=${index % 60 + 6}',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 8,),

              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    child: Icon(Icons.thumb_up, size: 10, color: Colors.white,),
                    backgroundColor: Colors.blue,
                  ),

                  SizedBox(width: 4, ),

                  CircleAvatar(
                    radius: 10,
                    child: Icon(Icons.favorite, size: 10, color: Colors.white,),
                    backgroundColor: Colors.deepOrange,
                  ),
                  SizedBox(width: 4, ),
                  Text('${index}', style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.thumb_up, color: Colors.grey,),
                    onPressed: () {
                      print('thumb_up ${index}');
                  },),
                  Stack(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.chat_bubble, color: Colors.grey,),
                        onPressed: () {
                          print('comment ${index}');
                        },
                      ),
                      Positioned(
                        top: 4,
                          right: 4,
                          child: Container(
                            width: 16,
                            height: 16,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('3', style: TextStyle(color: Colors.white, fontSize: 10), textAlign: TextAlign.center,),
                              ],
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                      )),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.share, color: Colors.grey,), onPressed: () {
                    print('share ${index}');
                  },),

                ],
              ),
            ],
          ),
        )
    );
  }
}



import 'package:flutter/material.dart';
import 'package:valentine/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavourite = true;
  final _controller1 = TextEditingController();
  final List<post> valenList = [
    post(
      name: 'darkfat3011',
      pos: 'Long time no see, Norway!.',
      com: 'Alone :(',
      pro: 'assets/images/chamber.jpg',
      img: 'assets/images/norway.jpg',
      com2: 'Who you go with?',
      name2: 'nikki620',
    ),
    post(
      name: 'isla99',
      pos: 'Just one night in Tokyo....',
      com: 'I have no idea. lol',
      pro: 'assets/images/jett.png',
      img: 'assets/images/tokyo.jpg',
      com2: "Where are you. I'm in tokyo too!",
      name2: 'zombie22',
    ),
    post(
      name: 'bose0937',
      pos: 'The first ramen in my restaurants.',
      com: 'I am OK',
      pro: 'assets/images/neon.jpg',
      img: 'assets/images/ramen.jpg',
      com2: 'Look delicious!,where is that place.',
      name2: 'kho0706',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(
          'Instravel',
        ),),
        body: ListView.builder(
            itemCount: valenList.length,
            itemBuilder: (context, index) => buildCard(valenList[index])));
  }

  Card buildCard(post thread) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage(thread.pro),
                      radius: 20,
                    ),
                  ),
                  Text(thread.name),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              Image.asset(thread.img),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(thread.pos),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      '${thread.name2} ',
                      style: TextStyle(color: Colors.pink),
                    ),
                    Text(thread.com2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      '${thread.name} ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(thread.com),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      icon: Icon(Icons.favorite,
                          color: isFavourite
                              ? Colors.black26
                              : Colors.red),
                      onPressed: () {
                        setState(() {
                          isFavourite = !isFavourite;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                          hintText: 'Add a comment',
                        ),
                        onChanged: (String value) async {
                          setState(() {});
                        }),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
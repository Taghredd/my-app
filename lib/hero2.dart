import 'package:flutter/material.dart';

class Hero2 extends StatefulWidget {
  const Hero2({super.key});

  @override
  State<Hero2> createState() => _Hero2State();
}

class _Hero2State extends State<Hero2> {
  final List<Map<String, dynamic>> images = [
    {
      'id': 'i1',
      'title': 'One',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/1.png'
    },
    {
      'id': 'i2',
      'title': 'Two',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/2.png'
    },
    {
      'id': 'i3',
      'title': 'Three',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/3.jpg'
    },
    {
      'id': 'i4',
      'title': 'Four',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/4.jpg'
    },
    {
      'id': 'i5',
      'title': 'Five',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/5.jpg'
    },
    {
      'id': 'i6',
      'title': 'Six',
      'url': 'https://www.kindacode.com/wp-content/uploads/2022/08/6.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            key: Key(images[index]["id"]),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detpad(images[index]),
              ));
            },
          );
        },
      ),
    );
  }
}

class Detpad extends StatelessWidget {
  final Map image;
  const Detpad(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(image["titel"]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: Center(
          child: Hero(tag: image["id"], child: Image.network(image["url"]))),
    );
  }
}

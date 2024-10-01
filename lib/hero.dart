import 'package:flutter/material.dart';
import 'package:new_application/constant.dart';

class HeroScreen extends StatefulWidget {
  HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  final List<Map<String, dynamic>> _images = [
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
          itemCount: _images.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              key: ValueKey(_images[index]['id']),
              // navigate to the detail page on tap
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    // pass the image data to the detail page
                    builder: (context) => DetailPage(_images[index])));
              },
              // implement the Hero widget
            );
          }),
    );
  }
}

// detail page
class DetailPage extends StatelessWidget {
  // get the image data that was passed from the main page
  final Map image;
  const DetailPage(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // implement the app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(image['title']),
        actions: [
          // this button does the same thing as the back button
          // I put it here to show you how to go back to the previous screen by implementing your own code
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: Center(
        // implement the Hero widget
        child: Hero(
          // important: the tag
          tag: image['id'],
          child: Image.network(image['url']),
        ),
      ),
    );
  }
}

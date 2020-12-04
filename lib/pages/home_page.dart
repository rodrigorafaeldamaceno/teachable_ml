import 'package:flutter/material.dart';
import 'package:teachable_ml/helpers/types.dart';
import 'package:teachable_ml/models/examples/examples.dart';
import 'package:teachable_ml/pages/classified_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final listOfExamples = [
    Examples(
      description: 'Cats and Dogs',
      location: 'cats_and_dogs',
      type: Types.CATS_AND_DOGS,
    ),
    Examples(
      description: 'Strawberries',
      location: 'strawberries',
      type: Types.STRAWBERRIES,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            'Choose what you want classified!',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          ListView.builder(
            itemCount: listOfExamples.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(listOfExamples[index].description),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClassifiedPage(
                        example: listOfExamples[index],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

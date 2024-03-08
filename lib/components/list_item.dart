import 'package:realgr/pages/home_page.dart';
import 'package:flutter/material.dart';


class ListItem extends StatelessWidget {
  const ListItem({super.key , required this.countryName, required this.countryFlag, required this.countryPopulation, required this.countrySquare});

  final String countryName;
  final String countryFlag;
  final String countrySquare;
  final String countryPopulation;


  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(8),
       color: Colors.teal[200], 
       child: Column(
        children: [
          Expanded(flex :2, child: Image.network(countryFlag)),
          Expanded(flex:2, child: Container(
              margin: const EdgeInsets.only(top: 12),
              child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Название:  ' + '$countryName' + '\n'),
                  TextSpan(text: 'Население: ' + '$countryPopulation'+ '\n'),
                  TextSpan(text: 'Площадь: ' + '$countrySquare' + '\n'),
                ]
              )),
            )),
          Expanded(flex: 1,child: Container(
            child:  ElevatedButton(
              child: const Text('Узнать больше...'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>   MySecondPage( )
                ));
},
          )),
       )],
       ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key,   required this.countryFlag, });


  final String countryFlag;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
            padding: const EdgeInsets.all(12),
            margin:const EdgeInsets.all(12),
              child: Column(
                children: [
                  Expanded(flex: 4,child: Image.network(countryFlag)),
                  Expanded(flex: 1,child: Image.network('DWDWDWD')),
                  Expanded(flex: 2,child: Image.network('DWDWDSDSWDWD')),
                  
                ],
              ),
          ),
    );
    
    
  

  }
} 
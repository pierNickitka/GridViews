import 'package:realgr/models/countries.dart';
import 'package:flutter/material.dart';
import 'package:realgr/components/list_item.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
        primary: false,
        padding: const EdgeInsets.all(20),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return  ListItem(
            countryFlag: CountryList[index].PhotoFlag,
            countryName: CountryList[index].Name,
            countrySquare: CountryList[index].Square,
            countryPopulation: CountryList[index].Population,
          );
        }
        
    ),
    );


}
}
 
 

class MySecondPage extends StatelessWidget {
 const  MySecondPage({super.key});

  
 

   @override
  Widget build(BuildContext context) {
      return  Scaffold(
          body: ListView(
            padding:const EdgeInsets.all(12),
            children: [
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/640px-Flag_of_Ghana.svg.png'),

              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (context,index){
                    return const Text('Погода вначале была хорошая, тихая. Кричали дрозды, и по соседству в болотах что-то живое жалобно гудело, точно дуло в пустую бутылку. Протянул один вальдшнеп, и выстрел по нем прозвучал в весеннем воздухе раскатисто и весело. Но когда стемнело в лесу, некстати подул с востока холодный пронизывающий ветер, всё смолкло. По лужам протянулись ледяные иглы, и стало в лесу неуютно, глухо и нелюдимо. Запахло зимой.Иван Великопольский, студент духовной академии, сын дьячка, возвращаясь с тяги домой, шел всё время заливным лугом по тропинке. У него закоченели пальцы, и разгорелось от ветра лицо. Ему казалось, что этот внезапно наступивший холод нарушил во всем порядок и согласие, что самой природе жутко, и оттого вечерние потемки сгустились быстрей, чем надо. Кругом было пустынно и как-то особенно мрачно. Только на вдовьих огородах около реки светился огонь; далеко же кругом и там, где была деревня, версты за четыре, всё сплошь утопало в холодной вечерней мгле. Студент вспомнил, что, когда он уходил из дому, его мать, сидя в сенях на полу, босая, чистила самовар, а отец лежал на печи и кашлял; по случаю страстной пятницы дома ничего не варили, и мучительно хотелось есть. И теперь, пожимаясь от холода, студент думал о том, что точно такой же ветер дул и при Рюрике, и при Иоанне Грозном, и при Петре, и что при них была точно такая же лютая бедность, голод, такие же дырявые соломенные крыши, невежество, тоска, такая же пустыня кругом, мрак, чувство гнета, — все эти ужасы были, есть и будут, и оттого, что пройдет еще тысяча лет, жизнь не станет лучше. И ему не хотелось домой.');
                  },
                ),
              ),
               
              Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Flag_of_Ghana.svg/640px-Flag_of_Ghana.svg.png'),
            ],
          ),
    );
}}

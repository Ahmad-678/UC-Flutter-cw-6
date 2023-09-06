import 'package:day6/Building.dart';
import 'package:day6/pages/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

var buildings = [
  Building(
    name: 'أبراج الكويت',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
  ),
  Building(
    name: 'برج التحرير',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
  ),
  Building(
    name: 'المسجد الكبير',
    imgUrl:
        'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
  ),
];


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView.builder(
           itemCount: buildings.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: Image.network(buildings[index].name),
                title: Text(buildings[index].imgUrl),
                subtitle: Text(buildings[index].imgUrl),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(ali: buildings[index])));
                  }, 
                icon: Icon(Icons.ios_share)),
              );
            })
        ),
      ),
    );
  }
}
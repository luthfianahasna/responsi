import 'package:flutter/material.dart';
import 'package:responsi/model/homepage_model.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SPACE FLIGHT NEWS"),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              final Homepage homepage = listHome[index];
              return InkWell(
                  /* onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Overview(homepage : menu)));
                  },*/
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.purple
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(homepage.imgUrls, height: 200),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(homepage.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(homepage.detail,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.normal)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              );
            }
        )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget
{


  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,

        leading: Icon(
          Icons.menu,

        ),

        title: Text(
          'First image app'
        ),
        actions:[

          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: ()
            {

              print("Notifications");
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()
            {

              print("Search Tool");
            },
          )

        ]

      ),


      body:Container(

        width: double.infinity,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,

              padding: EdgeInsetsDirectional.all(5),
              decoration: BoxDecoration(
                borderRadius:   BorderRadius.circular(50),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,

                children: [

                  Image(image: NetworkImage(
                  'https://tse1.mm.bing.net/th?id=OIP.n7OSjQ8UnNpApi1wWVfRXgHaEo&pid=Api&P=0&h=180'),
                    width: 250,
                    height: 200,
                    fit: BoxFit.cover,

                  ),

                  Container(

                    padding: EdgeInsetsDirectional.symmetric(

                      vertical: 0

                    ),
                    width: double.infinity,
                    color: Colors.amberAccent,
                    child: Text(
                      'Pink Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,

                      ),


                    ),
                  ),



                ],

              ),
            ),
          ],
        ),
      )



    );


  }


}
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Text('data'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.more_horiz)
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ClipRRect(
                borderRadius:BorderRadius.circular(100),
                child: Image.asset
                  ('assets/images/apple.jpg',height: 160, width: 160,
                fit: BoxFit.cover,),
              ),
              Column(
                children: [
                  Text('174',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Posts',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight(600)
                  ),)
                ],


              ),
              Column(
                children: [
                  Text('705k', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Followers',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight(600)
                  ),)
                ],
              ),
              Column(
                children: [
                  Text('701',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Following',
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 15
                  ),)
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),

                      onPressed: (){}, child: Text('Follow')),
                ),SizedBox(width: 10,),

                Expanded(
                  flex: 2,
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){}, child: Text('Message')),
                ),

                Expanded(
                  flex: 2,
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){}, child: Text('Email')),
                ),
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){}, child: Icon(Icons.keyboard_arrow_down)),
                )
              ],


            ),
          )




        ],
      ),

    );
    return const Placeholder();
  }
}

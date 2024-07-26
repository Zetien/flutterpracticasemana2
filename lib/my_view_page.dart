

import 'package:flutter/material.dart';
import 'package:vista_flutter_sem2/widgets/custom_buttom.dart';
import 'package:vista_flutter_sem2/widgets/custom_text.dart';
import 'package:vista_flutter_sem2/widgets/grid_gallery.dart';

class MyViewPage extends StatelessWidget {
  const MyViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/img_avatar/JorgeZetien.jpeg'),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                       CustomText(
                          text: 'Jorge Zetien',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: 'Ingeniero de Sistemas',
                          fontSize: 18,  
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: '380',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                         CustomText(
                          text: 'posts',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                         CustomText(
                          text: '834',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                          CustomText(
                          text: 'Followers',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                         CustomText(
                          text: '420',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                          CustomText(
                          text: 'Following',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      text: 'Follow',
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.amber, width: 2),
                      foregroundColor: Colors.amber,
                      
                    ),
                    CustomButton(
                      text: 'Message',
                      backgroundColor: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: GridGallery(),
                ),
                
              ],
            ),
          )],
        ),
      ),
    );
  }
}






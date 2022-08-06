import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {


  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de gatos'),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children:  <Widget> [
                    const Text('NameRaza',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24
                      ),
                    ),
                    const FadeInImage(

                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder:  AssetImage('assets/no-image.png'),
                      image: NetworkImage('https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png'),
                      // image: const NetworkImage('https//:via.placeholder.com/300x300'),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:const <Widget> [
                           Text('pais origen'),
                        Text('inteligencia point'),

                      ],
                    )
                  ],
                ),
              ),
            );
          },
      ),
    );
  }
}
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Masbaha extends StatefulWidget {

  @override
  State<Masbaha> createState() => _MasbahaState();
}

class _MasbahaState extends State<Masbaha> {
int counterTasbih=0;
int counterHamd=0;
int counterTakbir=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: const Color(0xff121212),
        title:const Text('المسبحه',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,

        ),
        ),
        centerTitle: true,
      ),
      body: Container(decoration: const BoxDecoration(
        image: DecorationImage(
           image: AssetImage('assets/images/spha.jpg'),
          fit: BoxFit.cover ,
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff30475E),
                  ),
                  width: double.infinity,

                  child: const Center(
                    child: Text('سبحان الله',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterTasbih=0;
                      });
                      },
                      icon:const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xffF05454),
                        child: Icon(
                          Icons.autorenew,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: Text(
                        '$counterTasbih',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterTasbih++;
                      });
                      },

                      icon: const Icon(
                          Icons.add_circle,
                          //size: 25.0,
                          color: Color(0xffF05454),
                        ),
                      ) ,

                  ],
                ),
                const SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff30475E),
                  ),
                  width: double.infinity,

                  child: const Center(
                    child: Text('الحمد الله',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterHamd=0;
                      });
                      },
                      icon:const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xffF05454),
                        child: Icon(
                          Icons.autorenew,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: Text(
                        '$counterHamd',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterHamd++;
                      });
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        //size: 25.0,
                        color: Color(0xffF05454),
                      ),
                    ) ,

                  ],
                ),
                const SizedBox(height: 20.0,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff30475E),
                  ),
                  width: double.infinity,

                  child: const Center(
                    child: Text('الله اكبر',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterTakbir=0;
                      });
                      },
                      icon:const CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Color(0xffF05454),
                        child: Icon(
                          Icons.autorenew,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ) ,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: Text(
                        '$counterTakbir',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    IconButton(iconSize: 35.0,
                      onPressed: (){
                      setState(() {
                        counterTakbir++;
                      });
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        //size: 25.0,
                        color: Color(0xffF05454),
                      ),
                    ) ,

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

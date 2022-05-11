

import 'package:flutter/material.dart';

  class MessengerScreen extends StatelessWidget {

    const MessengerScreen({Key? key}) : super(key: key);


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0.0,
         titleSpacing: 20.0,
         title: Row(
           children: const [
             CircleAvatar(
               radius: 20.0,
               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),
             ),
             SizedBox(width: 15.0,),
             Text(
               'Chats',
               style: TextStyle(
                 color: Colors.black,
               ),
             ),
           ],
         ),
         actions: [
           IconButton(
             onPressed: (){},
             icon:const CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.camera_alt,
                 size: 16.0,
                 color: Colors.white,
               ),
             ) ,
           ),
           IconButton(
               onPressed: (){},
               icon:const CircleAvatar(
                 radius: 15.0,
                 backgroundColor: Colors.blue,
                 child: Icon(
                   Icons.edit,
                   size: 16.0,
                   color: Colors.white,
             ),
               ) ,
           ),
         ],

       ),
       body: Padding(
         padding:const EdgeInsets.all(20.0),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               //searchBox
               Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                   borderRadius: BorderRadius.circular(5.0),
                 ),
                 padding: const EdgeInsets.all(5.0),
                 child: Row(
                   children: const [
                     Icon(
                       Icons.search,
                     ),
                     SizedBox(width: 15.0,),
                     Text('Search')
                   ],
                 ),
               ),
               const SizedBox(height: 20.0,),
               //ListView Of buildStoryItem
               SizedBox(height: 100.0,
                 child: ListView.separated(
                   scrollDirection: Axis.horizontal,
                     itemBuilder: (context,index) => buildStoryItem(),
                     separatorBuilder: (context,index) =>const SizedBox(width: 20.0,),
                     itemCount: 6),
               ),
               const SizedBox(height: 20.0,),
               //list view of chat item
               ListView.separated(
                   physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemBuilder: (context,index) =>buildChatItem(),
                   separatorBuilder:(context,index)=>const SizedBox(height: 20.0,),
                   itemCount: 15)



             ],
           ),
         ),
       ),
     );
   }
   Widget buildStoryItem() => Container(
     width: 60.0,
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: const [
             CircleAvatar(
               radius: 30.0,
               backgroundImage: NetworkImage(
                   'https://avatars.githubusercontent.com/u/34492145?v=4'),
             ),
             Padding(
               padding: EdgeInsetsDirectional.only(
                 bottom: 3.0,
                 end: 3.0,

               ),
               child: CircleAvatar(
                 radius: 7.0,
                 backgroundColor: Colors.green,

               ),
             ),
           ],
         ),
         const SizedBox(
           height: 6.0,),
         const Text('Abdullah Mansour sadiky',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
         ),
       ],
     ),
   );
   Widget buildChatItem() => Row(
     children: [
       Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: const [
           CircleAvatar(
             radius: 30.0,
             backgroundImage: NetworkImage(
                 'https://avatars.githubusercontent.com/u/34492145?v=4'),
           ),
           Padding(
             padding: EdgeInsetsDirectional.only(
               bottom: 3.0,
               end: 3.0,

             ),
             child: CircleAvatar(
               radius: 7.0,
               backgroundColor: Colors.green,

             ),
           ),
         ],
       ),
       const SizedBox(
         width: 15.0,),
       Expanded(
         child: Column( crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text('Abdullah Mansour Sa7by',
               style: TextStyle(
                 fontSize: 16.0,
                 fontWeight: FontWeight.bold,
               ),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,),
             const SizedBox(height: 5.0,),
             Row(
               children: [
                 const Expanded(
                   child: Text('hello my friend koftise are you happpy??',
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,),

                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Container(
                     width: 7.0,
                     height: 7.0,
                     decoration: const BoxDecoration(
                       color: Colors.blue,
                       shape: BoxShape.circle,
                     ),
                   ),
                 ),
                 const Text('02.00 pm'),
               ],
             ),
           ],
         ),
       ),
     ],
   ) ;


 }

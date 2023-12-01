import 'package:flutter/material.dart';
import 'package:instagram_ui/tabs/Feed.dart';
import 'package:instagram_ui/tabs/reels.dart';
import 'package:instagram_ui/tabs/tagged.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage ({super.key});


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  //tabs
final List<Widget> tabs = 
 [
  //feed tab
   Tab(icon: Icon(Icons.grid_4x4,
   color: Colors.grey,),
   ),

   //reels tab
   Tab(icon: Icon
   (Icons.video_collection,
   color: Colors.grey,),
   ),

   //tagged tab
   Tab(icon: Icon(Icons.bookmark,
   color: Colors.grey,),
   ),        

   ];

   //tab bar views
   final List<Widget> tabBarViews = const [

    //feed view
    FeedView(),

    //reels view
    ReelsView(),

    //tagged view
    TaggedView(),
   ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        body: SafeArea(
        child: ListView(
          children: [
            //profile details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              


              //profile pic
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      height:120,
                      width:120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('lib/images_insta/image3.jpg'),
                        fit: BoxFit.cover)
                        
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              //posts
              Padding(
                padding: const EdgeInsets.only(right:250.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Column(
                      children: [
                        Text('4', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
                        Text('posts', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 17, color: Colors.grey[400]),),
                        
                      ],
                    ),
                    SizedBox(width: 50),
                    
                    //following
                    Column(
                      children: [
                        Text('364', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
                        Text('Following', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 17, color: Colors.grey[600]),),
                      ],
                    ),
                    SizedBox(width: 50),
                    
                     //followers
                    
                    Column(
                      children: [
                        Text('28.8k', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 20),),
                        Text('Follower', style: TextStyle(fontWeight:FontWeight.w100, fontSize: 17, color: Colors.grey[600]),),
                      ],
                    ),
                  ],
                ),
              ),
              

            ],
            
          ),
          const SizedBox(height: 25), 
          //name
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
              children: [
                Text('Adesua Sylvester', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text('Software Tester', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey[400])),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text('Just living my best life', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text('linkedin.com/in/adesua-sylvester-aa6722195', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.blue[800])),
              ],
            ),
          ),
          //bio

          //links

        const SizedBox(height:20),

          //buttons

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //edit profile
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.blue[500], borderRadius: BorderRadius.circular(8)),
                width:200,
                child: Center(child: Text("Follow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white,)), 
                ),
                ),

                const SizedBox(width: 6),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                  width:200,
                  child: Center(child: Text("Message", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ),
                ),

                const SizedBox(width: 6),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                  width:200,
                  child: Center(child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                )),


            ],),

            const SizedBox(height:20),

          

          TabBar(tabs: tabs),

          //tab bar view
          SizedBox(
            height: 1000,
            child: TabBarView(children: tabBarViews ))

        ])
      ))
      );
      
  }
}
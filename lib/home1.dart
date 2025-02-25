import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shorts",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        actions: [
          Icon(Icons.search_sharp,color: Colors.white,size: 30,),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert,color: Colors.white,size: 30,)
        ],
      ),
      body: PageView(


        children: const [
          ShortItem(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,size: 30,),
            label: "home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_shortcut_sharp,size: 23,),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Icon(Icons.add_circle_outline,size: 50,),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined,size: 30,),
            label: 'subscriptions',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined,size: 30,),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}






class ShortItem extends StatelessWidget {
  const ShortItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          child: Center(
            child: PlantWidget(),
          ),
        ),
        const Positioned(
          right: 10,
          bottom: 60,
          child: ActionBar(),
        ),
        const Positioned(
          right: 340,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15,
                child: Icon(Icons.ac_unit,color: Colors.purple,size: 19,),

              ),

            ],
          ),
        ),
        const Positioned(
          right:269,
          bottom: 46,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("@Balaraju",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)

            ],
          ),
        ),
        Positioned(
            right:189,
            bottom: 41,
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 5),
                child: Text("Subscribe",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
              ),
            )
        ),
        const Positioned(
          right:163,
          bottom: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("He tell me when he is thirsty...🥰",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white),)

            ],
          ),
        ),



      ],
    );
  }
}

class PlantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 700-78,
          decoration: BoxDecoration(
            color: Colors.brown[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Center(
                child: Icon(
                  Icons.cloud,
                  size: 100,
                  color: Colors.blue[300],
                ),
              ),
              Icon(
                Icons.face_retouching_natural_outlined,
                size: 100,
                color: Colors.green[700],
              ),
              Icon(
                Icons.report_problem_outlined,
                size: 100,
                color: Colors.green[700],
              ),
            ],
          ),
        ),


      ],
    );
  }
}

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Icon(Icons.thumb_up_alt_outlined, color: Colors.white, size: 32-4),
        Text("1.4M",style: TextStyle(color: Colors.white,fontSize: 14-4),),
        SizedBox(height: 30),
        Icon(Icons.thumb_down_alt_outlined, color: Colors.white, size: 32-4),
        Text("Dislike",style: TextStyle(color: Colors.white,fontSize: 14-4),),
        SizedBox(height: 30),
        Icon(Icons.comment_outlined, color: Colors.white, size: 32-4),
        Text("4,999",style: TextStyle(color: Colors.white,fontSize: 14-4),),
        SizedBox(height: 30),
        Icon(Icons.share_sharp, color: Colors.white, size: 30-4),
        Text("share",style: TextStyle(color: Colors.white,fontSize: 14-4),),
        Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Icon(Icons.recycling_outlined, color: Colors.white, size: 38-4),
        ),
        Text("89k",style: TextStyle(color: Colors.white,fontSize: 14-4),),

      ],
    );
  }
}
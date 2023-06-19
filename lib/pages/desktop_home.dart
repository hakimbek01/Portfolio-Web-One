import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioweb/constant.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  bool language = true;

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 200);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //appBar
          Padding(
            padding: padding,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text("About Me",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text("Skills",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text("Portfolio",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text("Contacts",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          //introduce
          Padding(
            padding: padding,
            child: SizedBox(
              width:double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Texts.firstName,style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                      SizedBox(height: 10,),
                      Text(Texts.lastName,style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold,fontFamily: "Font1"),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Texts.who,style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),),
                      SizedBox(height: 10,),
                      Text(Texts.ageAndArea,style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: (){
                            setState(() {
                              language = true;
                            });
                          },
                          child: Text("RU",style: TextStyle(fontSize: 17,color: language?Colors.black:Colors.grey,fontFamily: "Font1",fontWeight: FontWeight.bold,),)),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              language = false;
                            });
                          },
                          child: Text("ENG",style: TextStyle(fontSize: 17,color: language?Colors.grey:Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),)
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          //image
          Padding(
            padding: padding,
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset("assets/images/myImage.png",fit: BoxFit.cover),
            ),
          ),
          //about me
          Container(
            height: 600,
            color: Colors.grey.shade50,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Text("About me",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                SizedBox(height: 50,),
                Text(Texts.about1,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                Text(Texts.about2,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                SizedBox(height: 30,),
                Text(Texts.about3,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                Text(Texts.about4,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                SizedBox(height: 30,),
                Text(Texts.about5,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                Text(Texts.about6,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
              ],
            ),
          ),
          //skills
          Padding(
            padding: padding,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Text("Skills",style: TextStyle(fontFamily: "Font1",fontWeight: FontWeight.bold,fontSize: 32),),
                  SizedBox(height: 50,),
                  Text(Texts.skills,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemOfSkills(image: "assets/images/firebase.png",name: "Firebase",stars: 4),
                      itemOfSkills(image: "assets/images/dart.png",name: "Dart",stars: 3),
                      itemOfSkills(image: "assets/images/androidstudio.png",name: "Androidstudio",stars: 4),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget itemOfSkills({image,name,stars}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image,width: 80,height: 80,),
        SizedBox(height: 10,),
        Text(name,style: TextStyle(color: Colors.grey),),
        SizedBox(height: 20,),
        SizedBox(
          height: 40,
          width: 160,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return  index>=stars?
              Row(
                children: [
                  Icon(CupertinoIcons.star_fill,color: Colors.grey,),
                  SizedBox(width: 10,),
                ],
              ):
              Row(
                children: [
                  Icon(CupertinoIcons.star_fill,color: Colors.black,),
                  SizedBox(width: 10,),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolioweb/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {

  bool language = true;
  ScrollController scrollController = ScrollController();
  bool isMouse1 = false;
  bool isMouse2 = false;
  bool isMouse3 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final padding = EdgeInsets.symmetric(horizontal: size<860?60:size<960?70:size<1060?80:size<1160?90:size<1260?100:size<1360?180:200);
    final margin = EdgeInsets.symmetric(horizontal: size<860?60:size<960?70:size<1060?80:size<1160?90:size<1260?100:size<1360?180:200);
    final margin2 = EdgeInsets.symmetric(horizontal: size<860?50:size<960?60:size<1060?70:size<1160?80:size<1260?90:size<1360?170:190);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        controller: scrollController,
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
                        onPressed: () {
                          setState(() {
                            scrollController.animateTo(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(()  {
                             scrollController.animateTo(700, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          });
                        },
                        child: Text("About Me",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            scrollController.animateTo(650*2, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Skills",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            scrollController.animateTo(660*3, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Portfolio",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            scrollController.animateTo(1000*4, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Contacts",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "Font1"),),
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
              height: 700,
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
          ),
          //portfolio
          Container(
            color: Colors.grey.shade50,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Text("Portfolio",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                //p1
                SizedBox(height: 50,),
                SizedBox(
                  width: double.infinity,
                  child: MouseRegion(
                    onExit: (event) {
                      setState(() {
                        isMouse1 = false;
                      });
                    },
                    onEnter: (event) {
                      setState(() {
                        isMouse1 = true;
                      });
                    },
                    child: AnimatedContainer(
                      margin:isMouse1?margin2:margin,
                      height: isMouse1?510:480,
                      duration: const Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            spreadRadius: 5,
                            blurRadius: 15
                          )
                        ]
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset("assets/images/p1.png",fit: BoxFit.cover,)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                TextButton(
                  onPressed: () async {
                    Uri url = Uri.parse("https://github.com/hakimbek01/speedometr");
                    await launchUrl(url);
                  },
                  child: Text("Speedometr - Homepage",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: "Font1",color: Colors.black),),
                ),
                //p2
                SizedBox(height: 50,),
                SizedBox(
                  width: double.infinity,
                  child: MouseRegion(
                    onExit: (event) {
                      setState(() {
                        isMouse2 = false;
                      });
                    },
                    onEnter: (event) {
                      setState(() {
                        isMouse2 = true;
                      });
                    },
                    child: AnimatedContainer(
                        margin:isMouse2?margin2:margin,
                        height: isMouse2?510:480,
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  spreadRadius: 5,
                                  blurRadius: 15
                              )
                            ]
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset("assets/images/p2.png",fit: BoxFit.cover,)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                TextButton(
                  onPressed: () async {
                    Uri url = Uri.parse("https://github.com/hakimbek01/qrcodescaner");
                    await launchUrl(url);
                  },
                  child: Text("QR-Scan - Homepage",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: "Font1",color: Colors.black),),
                ),
                //p3
                SizedBox(height: 50,),
                SizedBox(
                  width: double.infinity,
                  child: MouseRegion(
                    onExit: (event) {
                      setState(() {
                        isMouse3 = false;
                      });
                    },
                    onEnter: (event) {
                      setState(() {
                        isMouse3 = true;
                      });
                    },
                    child: AnimatedContainer(
                        margin:isMouse3?margin2:margin,
                        height: isMouse3?510:480,
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3),
                                  spreadRadius: 5,
                                  blurRadius: 15
                              )
                            ]
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset("assets/images/p3.png",fit: BoxFit.cover,)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                TextButton(
                  onPressed: () async {
                    Uri url = Uri.parse("https://github.com/hakimbek01/zarashopadmin");
                    await launchUrl(url);
                  },
                  child: Text("ZaraShop Online Market - Homepage",textAlign: TextAlign.center,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: "Font1",color: Colors.black),),
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
          //contacts
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  Text("Contacts",style: TextStyle(fontFamily: "Font1",fontWeight: FontWeight.bold,fontSize: 32),),
                  SizedBox(height: 30,),
                  Text("Want to know more or just chat?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                  Text("You are welcome",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: (){},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    color: Colors.black,
                    height: 50,
                    minWidth: 200,
                    padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                    child: Text("Send message",style: TextStyle(color: Colors.white,fontFamily: "Font1",fontSize: 17,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 70,),
                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            Uri url = Uri.parse("https://www.instagram.com/hakimbekdev/");
                            launchUrl(url);
                        },
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/images/linkedlin.png',fit: BoxFit.cover,)
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            Uri url = Uri.parse("https://www.instagram.com/hakimbekdev/");
                            launchUrl(url);
                          },
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/images/instagram.png',fit: BoxFit.cover,)
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            Uri url = Uri.parse("https://t.me/hakimbek_flutter");
                            launchUrl(url);
                          },
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/images/telegram.png',fit: BoxFit.cover,)
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Text("Like me on",style: TextStyle(color: Colors.grey,fontFamily: "Font1"),),
                  Text("Linkedln, Instagram, Telegram",style: TextStyle(color: Colors.grey,fontFamily: "Font1"),),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 700,
            width: 700,
            child: Image.asset("assets/images/avatar.png",width: 700,height: 700,)
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

  void f() async {
    scrollController.jumpTo(2);
  }
}

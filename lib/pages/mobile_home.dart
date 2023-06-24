import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {

  bool language = true;
  ScrollController scrollController = ScrollController();
  bool menu = false;


  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 30);
    final margin = EdgeInsets.symmetric(horizontal: 30);
    final height = 200.0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        controller: scrollController,
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 30,),
          //introduce
          Stack(
            children: [
              Padding(
              padding: padding,
              child: SizedBox(
                width:double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("firstName".tr(),style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                        SizedBox(height: 10,),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              menu = !menu;
                            });
                          },
                          icon: menu?Icon(Icons.close,):Icon(Icons.menu),
                        )
                      ],
                    ),
                    Text("lastName".tr(),style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                    SizedBox(height: 30,),
                    Text("who".tr(),style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                    Text("ageAndArea".tr(),style: TextStyle(fontSize: 16,color: Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),)
                  ],
                ),
              ),
            ),
              menu?
              Center(
                child: Container(
                  margin: margin,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        blurRadius: 7,
                        spreadRadius: 3
                      )
                    ]
                  ),
                  width: MediaQuery.of(context).size.width-40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                scrollController.animateTo(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                                menu = false;
                              });
                            },
                            child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Font1"),),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                menu = false;
                              });
                            },
                            icon: Icon(Icons.close),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: (){
                          setState(()  {
                            menu = false;
                            scrollController.animateTo(660, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          });
                        },
                        child: Text("About Me",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            menu = false;
                            scrollController.animateTo(660*2, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Skills",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            menu = false;
                            scrollController.animateTo(720*3, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Portfolio",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Font1"),),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            menu = false;
                            scrollController.animateTo(1000*4, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          });
                        },
                        child: Text("Contacts",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Font1"),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              TextButton(
                                  onPressed: () async {
                                    setState(() {
                                      language = true;
                                    });
                                    await context.setLocale(const Locale("ru", "RU"));
                                  },
                                  child: Text("RU  ",style: TextStyle(fontSize: 20,color: language?Colors.black:Colors.grey,fontFamily: "Font1",fontWeight: FontWeight.bold,),)),
                              TextButton(
                                  onPressed: () async {
                                    setState(() {
                                      language = false;
                                    });
                                    await context.setLocale(const Locale("en", "US"));
                                  },
                                  child: Text("ENG",style: TextStyle(fontSize: 20,color: language?Colors.grey:Colors.black,fontFamily: "Font1",fontWeight: FontWeight.bold,),)
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
              :SizedBox(),
            ]
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
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Text("About me",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                SizedBox(height: 50,),
                Text("about1".tr()+"about2".tr(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                SizedBox(height: 30,),
                Text("about3".tr()+"about4".tr(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),

                SizedBox(height: 30,),
                Text("about5".tr(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                Text("about6".tr(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
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
                  Text("skills".tr(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Font1"),),
                  SizedBox(height: 50,),
                  Column(
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
                Container(
                    margin: margin,
                    height: height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              spreadRadius: 3,
                              blurRadius: 7
                          )
                        ]
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/p1.png",fit: BoxFit.cover,)
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
                Container(
                    margin: margin,
                    height: height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              spreadRadius: 3,
                              blurRadius: 7
                          )
                        ]
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/p2.png",fit: BoxFit.cover,)
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
                Container(
                    margin: margin,
                    height: height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              spreadRadius: 3,
                              blurRadius: 7
                          )
                        ]
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset("assets/images/p3.png",fit: BoxFit.cover,)
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
            child: Padding(
              padding: padding,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Text("Contacts",style: TextStyle(fontFamily: "Font1",fontWeight: FontWeight.bold,fontSize: 32),),
                    SizedBox(height: 30,),
                    Text("contacts1".tr(),textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                    Text("contacts2".tr(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Font1"),),
                    SizedBox(height: 30,),
                    MaterialButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Colors.black,
                      height: 50,
                      minWidth: 200,
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                      child: Text("sendButton".tr(),style: TextStyle(color: Colors.white,fontFamily: "Font1",fontSize: 17,fontWeight: FontWeight.bold),),
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
                    Text("likeMe".tr(),style: TextStyle(color: Colors.grey,fontFamily: "Font1"),),
                    Text("Linkedln, Instagram, Telegram",style: TextStyle(color: Colors.grey,fontFamily: "Font1"),),
                  ],
                ),
              ),
            ),
          ),
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
        SizedBox(height: 30,),
      ],
    );
  }

}

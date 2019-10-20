import 'dart:io';
import 'package:hackcbs/notification.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hackcbs/card1.dart';
import 'package:url_launcher/url_launcher.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  final apptitle = "mighty coders";
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: apptitle,
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  List<String> books =[
    "https://goalkicker.com/DotNETFrameworkBook/DotNETFrameworkNotesForProfessionals.pdf",
    "http://www.kciti.edu/wp-content/uploads/2017/07/cprogramming_tutorial.pdf",
    "https://www.cs.cmu.edu/afs/cs.cmu.edu/user/gchen/www/download/java/LearnJava.pdf",
    "http://enos.itcollege.ee/~jpoial/allalaadimised/reading/Android-Programming-Cookbook.pdf",
    "https://www.tutorialspoint.com/android/android_tutorial.pdf",
    "https://www.tutorialspoint.com/uipath/uipath_tutorial.pdf",
    "https://www.tutorialspoint.com/artificial_intelligence/artificial_intelligence_tutorial.pdf",
    "https://alex.smola.org/drafts/thebook.pdf",
    "https://docsmsftpdfs.blob.core.windows.net/guides/azure/azure-ops-guide.pdf",
  ];
  List<String> services_city = [

    "https://cdn.iconscout.com/icon/free/png-256/c-programming-569564.png",
    "images/azure png.png",
    "images/android png.png",
    "images/images.png",
    "images/java png.png",
    "images/ML png.png",
    "images/python png.png",
    "images/ui path png.png",
    "images/ui path png.png",
  ];

  List<String> cityNames = [
    "C",
    "C++",
    "JAVA",
    "PYTHON",
    "FLUTTER",
    "NODE.JS",
    "JAVASCRIPT",
    ".NET",
    "ML",
//    "Chandigarh",


  ];
  List imgList = [

    "https://venturebeat.com/wp-content/uploads/2017/12/microsoft-azure-new-logo-2017.png",
    "https://hackernoon.com/drafts/q141s3xfs.png",
    "https://i.udemycdn.com/course/750x422/700012_a499_9.jpg",
    "https://s24255.pcdn.co/wp-content/uploads/2014/05/oracle-java.jpg",
    "https://prateekvjoshi.files.wordpress.com/2014/09/main.jpg",
    "https://static.makeuseof.com/wp-content/uploads/2017/10/What-Is-JavaScript-Featured-670x335.jpg",
    "https://media.wired.com/photos/5955b14c63d43b038e9bc5e7/master/w_1600,c_limit/google-tensor-flow-logo-S.jpg",
    "https://cdn.evilmartians.com/front/posts/optimizing-react-virtual-dom-explained/cover-a1d5b40.png",
    "https://i.imgur.com/1KNte1T.jpg",
//    " https://miro.medium.com/max/3840/1*tRp3G6ffXDMDVOvMebzYgg.jpeg",
//    " https://miro.medium.com/max/3840/1*tRp3G6ffXDMDVOvMebzYgg.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("MIGHTY CODERS"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.location_on),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => notification()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 400.0,
              ),
              ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent])
                        .createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.network("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png",height: 300,fit: BoxFit.cover,)
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text('CODIES',
                    style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyanAccent.withOpacity(0.3),
                        letterSpacing: 10.0)),
              ),


              Positioned(
                  top: 200.0,
                  left: 20.0,
                  child: Column(
                    children: <Widget>[
                      Text('WELCOME TO',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 32.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)
                      )
                    ],
                  )),
              Positioned(
                  top: 235.0,
                  left: 10.0,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('MIGHTY CODERS',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFD3664))),
                          Text(',',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(width: 10.0),
                          Text('Asia',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )),
              Positioned(
                  top: 320.0,
                  left: 25.0,
                  right: 25.0,
                  child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF262626),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Lets explore here...',
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontSize: 12.0),
                            contentPadding: EdgeInsets.only(top: 15.0),
                            prefixIcon: Icon(Icons.search, color: Colors.grey)),
                      )))
            ],
          ),
          Container(child: Column(
            children: <Widget>[
              Text("tending techs 2019",style: TextStyle(color: Colors.deepPurple,fontSize: 20,   fontWeight: FontWeight.bold, ),),
              CarouselSlider(
                viewportFraction: 0.8,
                initialPage: 0,
                autoPlay: true,
                enlargeCenterPage: true,
                height: 250.0,
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
          ),

//          ListView(
//            shrinkWrap: true,
//            scrollDirection: Axis.horizontal,
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  ListTile(
//                    leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                    ),
//                    title: Text('Sun'),
//                    subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                  ),
//                  ListTile(
//                    leading: CircleAvatar(
//                        backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                    ),
//                    title: Text('Sun'),
//                    subtitle: Text('93 million miles away'), //           <-- subtitle
//                    onTap: (){},
//                  ),
//                  ListTile(
//                    leading: CircleAvatar(
//                        backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                    ),
//                    title: Text('Sun'),
//                    subtitle: Text('93 million miles away'), //           <-- subtitle
//                    onTap: (){},
//                  ),
//                ],
//              ),
//              Row(children: <Widget>[
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//              Row(children: <Widget>[
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//                ListTile(
//                  leading: CircleAvatar(
//                      backgroundImage:NetworkImage("https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png")
//                  ),
//                  title: Text('Sun'),
//                  subtitle: Text('93 million miles away'), //           <-- subtitle
//                  onTap: (){},
//                ),
//              ],)
//              ],
//              ),
//            ],
//          ),
          //Get out of the stack for the options
//          Container(
//            color: Colors.black26,
////            height: 300.0,
//            child:
//          ),
      Container(
        height: 300,
        width: 270,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    elevation: 7.0,
                    child: Center(
                      child: Container(

                        height: 290.0,
                        width: 345.0,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "WE ARE CURRENTLY SERVING THESE COURCES",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight
                                      .bold),
                            ),
                            Container(
                              height: 272,
                              width: 400,
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: services_city
                                      .length,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisSpacing: 3,
                                      crossAxisSpacing: 3,
                                      crossAxisCount: 3),
                                  itemBuilder: (context,
                                      index) {
                                    return Column(
                                      children: <Widget>[
                                        Image.asset(
                                            services_city[index]),
                                        Text(cityNames[index]),
                                        MaterialButton(
                                          splashColor: Colors.yellowAccent,
                                          onPressed: (){

                                        },)
                                      ],
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


      /// ListView.builder

      Container(
        width: 500.0,
        height: 300.0,
        child: Column(
          children: <Widget>[
            Text("Recommended Courses", textAlign: TextAlign.start, style: TextStyle(fontSize: 17.0, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 350,
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imgList.length,
                  //                           shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Card(
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(10.0)),
                            child:     Container(

                              child: Image.network(imgList[index],
                                fit: BoxFit.fill,),
                              height: 280,
                              width: 300,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 6.0,
                          top:10.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Wrap(
                                spacing:47.0,

                                children: <Widget>[
                                  MaterialButton(
                                    color: Colors.white,
                                    highlightElevation: 6,
                                    shape:  StadiumBorder(),
                                    textColor:
                                    Colors.redAccent,
                                    child: Text("get material "),
                                    onPressed: (){
                                      Image.network(books[index]);
                                    },
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: 150.0,
                                    decoration:
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          bottomLeft: Radius.circular(25.0)),
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.only(topLeft:
                                      Radius.circular(25.0),
                                        bottomLeft:
                                        Radius.circular(20.0),
                                      ),
                                      child: Align(
                                        ///text container
                                        child: Column(
                                          children: <Widget>[

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Text("₹ 50", style: TextStyle(fontSize: 12.0, color: Colors.green, fontWeight: FontWeight.bold),
                                                ),
                                                Icon(Icons.access_time, color: Colors.yellow,
                                                ),
                                                Text("70 mins", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.0, color: Colors.yellow, fontWeight: FontWeight.bold),
                                                ),
                                                Icon(
                                                  Icons.info_outline,
                                                  color: Colors.green,
                                                ),
                                              ],
                                            ),
                                            ///text of container
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceEvenly,
                                              children: <
                                                  Widget>[
                                                Text("50% off", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.0, color: Colors.red, fontWeight: FontWeight.bold),
                                                ),
                                                Text("save ₹450", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.0, color: Colors.green, fontWeight: FontWeight.bold),
                                                ),
                                                Text("₹500", textAlign: TextAlign.center, style: TextStyle(fontSize: 12.0, color: Colors.red, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),

                        ),
                        Positioned(
                          left: 5.0,
                          bottom:10.0,
                          child: Container(
                            height: 120,
                            width: 230,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Divider(
                                  color: Colors.lightGreenAccent,
                                ),
                                Text(
                                  "Top ternding vedio tutorials",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.redAccent,
                                      fontWeight:
                                      FontWeight.bold),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.check,
                                      color: Colors.lightBlue,
                                    ),
                                    Text(
                                      "Simple Steps",
                                      textAlign:
                                      TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                          Colors.yellowAccent,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.check,
                                      color: Colors.lightBlueAccent,
                                    ),
                                    Text(
                                      "Deeply Explained",
                                      textAlign:
                                      TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                          Colors.yellowAccent,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.check,
                                      color: Colors.lightBlueAccent,
                                    ),
                                    Text(
                                      "Get Mantorship",
                                      textAlign:
                                      TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color:
                                          Colors.yellowAccent,
                                          fontWeight:
                                          FontWeight
                                              .bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),
        ],

      ),


    ),
      ],
    ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40.0,
                child: Image.network(
                  "https://cdn.dribbble.com/users/1112068/screenshots/6028191/dribble_-07.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Welcome",style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 27.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple),),
            ),
            ListTile(
              title: Text("My Profile"),
              leading: Icon(Icons.assignment_ind),
              onTap: () {
                //Navigator.push(context, new MaterialPageRoute(
                //  builder: (context) => Page2(),),);
              },
            ),
            ListTile(
              title: Text("My Courses"),
              leading: Icon(Icons.call_to_action),
              onTap: () {
                //Navigator.push(context, new MaterialPageRoute(builder: (context) => flutter_url()),);
              },
            ),
            ListTile(
              title: Text("Progress"),
              leading: Icon(Icons.art_track),
              onTap: () {
                //Navigator.push(context, new MaterialPageRoute(builder: (context) => sliver2()),);
              },
            ),
            ListTile(
              title: Text("Dash Board"),
              leading: Icon(Icons.airplay),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => card1()),);
              },
            ),
            Container(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            Container(
              child: Text(
                  "EXPLORE MORE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepPurple)              ),
            ),
            ListTile(
              title: Text("ALL Courses"),
              leading: Icon(Icons.library_books),
              onTap: () {
                //Navigator.push(context, new MaterialPageRoute(builder: (context) => transfrom()),);
              },
            ),
            ListTile(
              title: Text("Refer Earn"),
              leading: Icon(Icons.merge_type),
              onTap: () {
                //Navigator.push(context, new MaterialPageRoute(builder: (context) => buttom1()),);
              },
            ),
            ListTile(
              title: Text("Gift Vouchers"),
              leading: Icon(Icons.attach_money),
              onTap: () {},
            ),
            ListTile(
              title: Text("Upgrade to premium account"),
              leading: Icon(Icons.offline_bolt),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ask Questions"),
              leading: Icon(Icons.question_answer),
              onTap: () {},
            ),
            ListTile(
              title: Text("call us"),
              leading: Icon(Icons.call),
              onTap: () {},
            ),
            Container(
              child: Divider(
                thickness: 2.0,
              ),
            ),
            Container(
              child: Text(
                  "Logout ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                      color: Colors.deepPurple)              ),
            ),
            ListTile(
              title: Text("logout"),
              leading: Icon(Icons.important_devices),
              onTap: () {},
            )
          ],
        ),
      ),
    ),
      ///drawer

    );
  }
}
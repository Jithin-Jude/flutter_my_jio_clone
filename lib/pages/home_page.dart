import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  String getUsefulLinkString(int index){
    List<String> usefulLinks = ["My vouchers", "Coupons", "Pay bill", "JioPay", "JioInteract", "Store locator"];
    return usefulLinks[index];
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return Container(
          child: new ListView(
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color(0xff2a3890),
                      Color(0xff0059E5),
                      Color(0xff2A7CFD),
                      Color(0xff5091F7),
                    ],
                  ),
                ),
                height: 200.0,
                padding: EdgeInsets.only(top: 0, bottom: 20),
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(7, (int index) {
                    return new Card(
                      child: new Container(
                        width: 240.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/banner_"+index.toString()+".jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, top: 24, bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.person_outline, color: Color(0xff2a3890),),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text("My Account", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          margin: const EdgeInsets.only(left: 140),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                          child: Text("Jio Prime", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children : <Widget>[
                          Text("8075551292", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22)),
                          Container(
                            margin: const EdgeInsets.only(left: 90),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                border: new Border.all(
                                    color: Color(0xff2a3890),
                                    width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Text("Switch account", style: TextStyle(color: Color(0xff2a3890), fontWeight: FontWeight.bold, fontSize: 14)),
                          ),
                      ]
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Prepaid VoLTE", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),),
                    Container(
                        padding: const EdgeInsets.only(top: 4),
                      child: Text("Last used on Huawei Honor 7A", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                margin: const EdgeInsets.only(left: 16, bottom: 6, top: 6),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.link, color: Color(0xff2a3890),),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Link new account", style: TextStyle(color: Color(0xff2a3890), fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 112),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Color(0xff2a3890),
                            width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Text("Link Now", style: TextStyle(color: Color(0xff2a3890), fontWeight: FontWeight.bold, fontSize: 14)),
                    )
                  ],
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                            color: Colors.lightBlueAccent,
                            child: Container(
                              height: 130,
                              width: 160,
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Text("149 plan", style: TextStyle(color: Colors.white, fontSize: 24),),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 12, bottom: 12),
                                    child: Text("expires on 05 Jan 2019", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: new Border.all(
                                          color: Colors.white,
                                          width: 1),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text("View details", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Card(
                          color: Colors.indigoAccent,
                          child: Container(
                            height: 130,
                            width: 160,
                            padding: EdgeInsets.all(14),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text("575.64 MB", style: TextStyle(color: Colors.white, fontSize: 24),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 12, bottom: 4),
                                  child: Text("remaining of 1.50 GB\nrenews in 13 hours", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border: new Border.all(
                                        color: Colors.white,
                                        width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Text("Check usage", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 18),
                      child : Text("Balance gets updated within 60 Minutes of usage", style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    )
                  ],
                )

              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                height: 160.0,
                width: 200,
                margin: EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 14),
                color: Colors.white,
                child: Card(
                  child: Container(
                          decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          image: new DecorationImage(
                          image: new AssetImage("assets/images/jio_pay_banner.png"),
                          fit: BoxFit.fill,
                          ),
                    ),
                  ),
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin : EdgeInsets.only(left: 12),
                            child: Icon(Icons.refresh, color: Color(0xff2a3890),)
                        ),
                        Text(" Recharge", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 16),
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.refresh, color: Colors.white,),
                                  Text(" Recharge plans", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.network_check, color: Colors.white,),
                                  Text(" 4G Data Vouchers", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.language, color: Colors.white,),
                                  Text(" ISD Roming", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.smartphone, color: Colors.white,),
                                  Text(" Other number", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding : EdgeInsets.only(left: 12),
                        child : Icon(Icons.link, color: Color(0xff2a3890),)),
                    Text(" Useful links", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 12, right: 12, top: 12),
                height: 250.0,
                color: Colors.white,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: new List<Widget>.generate(6, (index) {
                    return new GridTile(
                      child: new Column(
                        children: <Widget>[
                          Container(
                            height : 50,
                            width: 50,
                            margin: EdgeInsets.all(16),
                            child: Image(image: new AssetImage("assets/images/useful_link_$index.png")),
                          ),
                          Text(getUsefulLinkString(index), style: TextStyle(fontWeight: FontWeight.w900))
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                height: 160.0,
                width: 200,
                margin: EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 14),
                color: Colors.white,
                child: Card(
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/banner_5.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            margin : EdgeInsets.only(left: 12),
                            child: Icon(Icons.phone, color: Color(0xff2a3890),)
                        ),
                        Text(" Jio care", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 16),
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.live_help, color: Colors.white,),
                                  Text(" FAQs", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.ondemand_video, color: Colors.white,),
                                  Text(" How to videos", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.warning, color: Colors.white,),
                                  Text(" Troubleshoot", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.format_list_bulleted, color: Colors.white,),
                                  Text(" Helpful tips", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.warning, color: Colors.white,),
                                  Text(" Track Rquest", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.chat, color: Colors.white,),
                                  Text(" Live chat", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),Container(
                height: 50.0,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left : 12),
                    child: Icon(Icons.local_movies, color: Color(0xff2a3890),),
                    ),
                    Text(" Entertainment for you")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // Box decoration takes a gradient
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color(0xff2a3890),
                      Color(0xff0059E5),
                      Color(0xff2A7CFD),
                      Color(0xff5091F7),
                    ],
                  ),
                ),
                height: 200.0,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(6, (int index) {
                    return new Card(
                      child: new Container(
                        width: 240.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/banner_entertainment_"+index.toString()+".jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            margin : EdgeInsets.only(left: 12),
                            child: Icon(Icons.security, color: Color(0xff2a3890),)
                        ),
                        Text(" JioSecurity", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 16),
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.block, color: Colors.white,),
                                  Text(" Call blocking", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.lock_outline, color: Colors.white,),
                                  Text(" Anti theft", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                              children: <Widget>[
                                  Icon(Icons.security, color: Colors.white,),
                                  Text(" Anti malware", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: Container(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.supervised_user_circle, color: Colors.white,),
                                  Text(" App advisor", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider( color: Color(0xff7B7B7B),),
              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding : EdgeInsets.only(left: 12),
                        child : Icon(Icons.apps, color: Color(0xff2a3890),)),
                    Text(" Jio apps not yet installed", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 200.0,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 12),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 80,
                                width: 150,
                                color: Colors.deepOrange,
                                child: Container(
                                  padding: EdgeInsets.all(18),
                                  child: Image(image: new AssetImage("assets/images/jio_app_1.png")),
                                )
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              child: Text("JioCloud", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("Store and access your\nfiles from anywhere",  textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                              decoration: BoxDecoration(
                                  border: new Border.all(
                                      color: Color(0xff2a3890),
                                      width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  color: Color(0xff2a3890)
                              ),
                              child: Text("Get", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 80,
                                  width: 150,
                                  color: Color(0xff2a3890),
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    child: Image(image: new AssetImage("assets/images/jio_app_2.png")),
                                  )
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 12),
                                child: Text("JioXpressNews", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text("Real time news\nupdates",  textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                                decoration: BoxDecoration(
                                    border: new Border.all(
                                        color: Color(0xff2a3890),
                                        width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    color: Color(0xff2a3890)
                                ),
                                child: Text("Get", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 80,
                                  width: 150,
                                  color: Colors.cyan,
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    child: Image(image: new AssetImage("assets/images/jio_app_3.png")),
                                  )
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 12),
                                child: Text("JioHealthHub", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text("Your health\ncompanion",  textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                                decoration: BoxDecoration(
                                    border: new Border.all(
                                        color: Color(0xff2a3890),
                                        width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    color: Color(0xff2a3890)
                                ),
                                child: Text("Get", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  height: 80,
                                  width: 150,
                                  color: Colors.green,
                                  child: Container(
                                    padding: EdgeInsets.all(18),
                                    child: Image(image: new AssetImage("assets/images/jio_app_0.png")),
                                  )
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 12),
                                child: Text("JioSaavan", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 8),
                                child: Text("All your music.\nAnytime, anywhere",  textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
                                decoration: BoxDecoration(
                                    border: new Border.all(
                                        color: Color(0xff2a3890),
                                        width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    color: Color(0xff2a3890)
                                ),
                                child: Text("Get", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
    );
  }
}
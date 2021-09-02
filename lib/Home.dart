


import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1582646125915-0082003f175b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80"),
      fit: BoxFit.cover),
    ),
        child: Column(
      
          children: [ 
            Container(
              
              padding: EdgeInsets.only(left: 25,top: 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jesus Youth",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("        Daily Prayer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                ],
              ),
            ),
            SizedBox(height: 40,),

            Container(
              height: MediaQuery.of(context).size.height-199,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.only(topLeft:Radius.circular(95))
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 20,top: 40),
                children: [
                  Text("Calling on His Name in the name of the Father, and of the Son, and of the Holy spirit. Amen V. Lord, teach us to prayR. Lord, fill us with your Holy Spirit.V. Glory be to the Father, and to the Son, and to the Holy Spirit.R.As it was in the beginning, is now, and ever shall be, world without end. Amen.(Enter into the loving presence of the Lord spending a few moments in Praise and Thanksgiving)Turning to his mercySearch me, O God, and know my heart!Try me and know my thoughts!And see if there be any wicked way in me, and lead me in the way everlasting! [Ps 139:23-23]( In silence, allow the Holy Spirit to examine your heart; especially your faithfulness to God, to the Jesus Youth Lifestyle / six pillars and the responsibilities God has entrusted you with).Lord Jesus, Thank you for your faithful love and your tender mercy. I want to be faithful to you and to the responsibilities you have given me. I desire to be more like you through a true living of the six pillars. In your goodness have mercy on me: Cleanse me with your precious Blood from all my sins and my unfaithfulness. Create in me a clean hear, renew within me an upright spirit and empower me with your grace. Amen. Trusting His Grace.Abba Father, I thank you for loving me in spite of my shortcomings, Jesus, my Savior, I rejoice in your mercy that gives me a new life .Holy Spirit, my ever present Helper, I praise you for being patient with me and teaching me to walk n your way. O Triune God, may I always be aware of being immersed in your loving presence . I surrender myself to you, your loving presence. I surrender myself yo you. especially my thoughts and my will, and gladly accept your sovereignty in my life. May i always seek your glory in my missionary journey as a Jesus Youth ,( Spend a few moments in surrender, praying/singing in tongues leading to a time of silence. Optionally, read and reflect on the day's Gospel passage.)Praying in communion Lord Jesus I offer up the entire Jesus Youth movement across the world. l may all its leaders be guided by your spirit and be made one in heart and mind. I pray that every Jesus Youth may grow in your love and in missionary zeal so that all making may encounter you and walk towards the fulness of life in  you. I offer my sacrifices and prayers of this day with the prayers of thee Church and the Holy Eucharist celebrated all over the world for the salvation of all people and for my own personal sanctification. Abba Father, uniting myself with all Jesus Youth across the world, I cry out to you with joy Our Father... Going forth in joy God our Father, through the Death  and Resurrection of your son and the outpouring of the Holy Spirit, You have given us a new life. grant us the grace to know you more clearly, love  you more dearly and follow you more nearly . we ask this through Christ our Lord. Amen.Mary Queen of Apostles, St. Michael the Archangel, St. Francis of Assisi. a;; the angels and saints - be with us and help us to grow in holiness.The lord Bless us all, and keep us from all evil, and bring us to everlasting life. Amen",style: TextStyle(color: Colors.white,))
                ],
              ),
                          )
      
            
           
          ]),
      )
      
      
    );
  }
}

class backrnd extends StatelessWidget {
  const backrnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1582646125915-0082003f175b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80"),
      fit: BoxFit.cover),
    ),
    child: Container(
      height: 50,
      alignment: Alignment.bottomCenter,
     
     
      child: Expanded(
        child:SingleChildScrollView(
          child: Text("Prayer Sample",style: TextStyle(color: Colors.white),),
        ) ),
    ),
        );
  }
}
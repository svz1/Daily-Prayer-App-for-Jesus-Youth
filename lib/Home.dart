import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  
@override
  
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  
  
  
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
              
              height: MediaQuery.of(context).size.height/4.5,
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
            SizedBox(height: 10,),

            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height-199,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(55))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(55))
                  ),
                  padding: EdgeInsets.only(top: 9),
                  child: ListView(
                    
                    padding: EdgeInsets.only(left: 20,top: 5,right: 15,bottom: 20),
                    children: [
                      Container(
                         decoration: BoxDecoration(
                    
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(95))
                  ),
                        child: richtextwidget()
                         ),
                       
                      
                    ],
                  ),
                ),
                            ),
            )
      
            
           
          ]),
      )
      
      
    );
  }
}

class richtextwidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
      text: "Calling on His Name",
      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
      children: [
        TextSpan(
          text:" \n\nin the name of the Father, and of the Son, and of the Holy spirit. Amen", style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),
           
        ),
        TextSpan(
          text:"\n\nV.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),
        ),
         TextSpan(text: " Lord, teach us to pray",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
         TextSpan(
          text:"\nR.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
        TextSpan(text:" Lord, fill us with your Holy Spirit",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14) ),
        TextSpan(
          text:"\nV.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
            TextSpan(text:" Glory be to the Father, and to the Son, and to the Holy Spirit",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14) ),                            
            TextSpan(
          text:"\nR.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
         TextSpan(text:" As it was in the beginning, is now, and ever shall be, world without end. Amen.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14) ),                            
         TextSpan(text: " \n\n( Enter into the loving of the Lord spending a few moments in Praise and Thanksgiving )",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
          TextSpan(
          text:"\n\nTurning to his mercy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
         TextSpan(text: "\n\nSearch me, O God, and know my heart! Try me and know my thoughts! And see if there be any wicked way in me, and lead me in the way everlasting! \n[Ps 139:23-24]",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
        
     TextSpan(text: " \n\n( In silence, allow the Holy Spirit to examine your heart; especially your faithfulness to God, to the Jesus Youth Lifestyle / six pillars and the responsibilities God has entrusted you with )",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,),),
        TextSpan(text: "\n\n Lord Jesus, Thank you for your faithful love and your tender mercy. I want to be faithful to you and to the responsibilities you have given me. I desire to be more like you through a true living of the six pillars. In your goodness have mercy on me: Cleanse me with your precious blood from all my sins and my unfaithfulness. Create in me a clean hear, renew within me an upright spirit and empower me with your grace. Amen.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
        TextSpan(
          text:"\n\nTrusting His Grace",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
         TextSpan(text: "\n\n Abba Father, I thank you for loving me in spite of my shortcomings, Jesus, my Savior, I rejoice in your mercy that gives me a new life .Holy Spirit, my ever present Helper, I praise you for being patient with me and teaching me to walk n your way. O Triune God, may I always be aware of being immersed in your loving. I surrender myself to you, your loving. I surrender myself yo you. especially my thoughts and my will, and gladly accept your sovereignty in my life. May i always seek your glory in my missionary journey as a Jesus Youth",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
           TextSpan(text: " \n\n( Spend a few moments in surrender, praying/singing in tongues leading to a time of silence. Optionally, read and reflect on the day's Gospel passage.)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
       TextSpan(
          text:"\n\nPraying in communion",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
          TextSpan(text: "\n\nLord Jesus I offer up the entire Jesus Youth movement across the world. l may all its leaders be guided by your spirit and be made one in heart and mind. I pray that every Jesus Youth may grow in your love and in missionary zeal so that all making may encounter you and walk towards the fulness of life in  you. I offer my sacrifices and prayers of this day with the prayers of thee Church and the Holy Eucharist celebrated all over the world for the salvation of all people and for my own personal sanctification. Abba Father, uniting myself with all Jesus Youth across the world, I cry out to you with joy",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
        TextSpan(
          text:"\n\nOur Father...",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
        TextSpan(
          text:"\n\nGoint forth in joy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
        ),
         TextSpan(text: "\n\nGod our Father, through the Death  and Resurrection of your son and the outpouring of the Holy Spirit, You have given us a new life. grant us the grace to know you more clearly, love  you more dearly and follow you more nearly. we ask this through Christ our Lord. Amen.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
         TextSpan(text: "\n\nMary Queen of Apostles, St. Michael the Archangel, St. Francis of Assisi, all the angels and saints - be with us and help us to grow in holiness.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
         TextSpan(text: "\n\nThe lord Bless us all, and keep us from all evil, and bring us to everlasting life. Amen",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
        

       

     ]
    ));
  }
}


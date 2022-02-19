import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultrafat/constants/theme.dart';
import 'package:ultrafat/ui/view/bottom_nav_view.dart';

class ScoreView extends StatefulWidget {
  final String? score;
  ScoreView({Key? key, this.score}) : super(key: key);

  @override
  _ScoreViewState createState() => _ScoreViewState();
}

class _ScoreViewState extends State<ScoreView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: blue,),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>BottomNavView()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 419,
                  width: double.infinity,
              
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                      )
                    ],
                  ),
                  child:Column(
                    children: [
                      SizedBox(height: 13,),
                      Container(
                        alignment: Alignment.center,
                        height: 286,
                        width: 286,
                        decoration: BoxDecoration(
                          border: Border.all(color: blue,width: 2),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Text("${widget.score}",style: blackTextStyle.copyWith(
                          color: blue,
                          fontSize: 120,
                          fontWeight: FontWeight.w800,

                        ),textAlign: TextAlign.center,),

                      ),
                      SizedBox(height: 13,),
                      Text("${widget.score} adalah skor BMI anda",style: blackTextStyle.copyWith(
                        color: blue,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,

                      ),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding: EdgeInsets.only(left: 8),
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/thin.png"),
                            Text("Kekurangan bobot",style: blackTextStyle.copyWith(
                                color: blue,
                                fontWeight: FontWeight.bold
                            ),),
                            Text("< 18.5",style: blackTextStyle.copyWith(
                              color: blue,
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)
                        ),
                      ),
                    ),Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 130,
                        child: Column(
                          children: [
                            Image.asset("assets/normal.png"),
                            Text("Normal",style: blackTextStyle.copyWith(
                              color: blue,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("18.5  - 24.9",style: blackTextStyle.copyWith(
                                color: blue,
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)
                        ),
                      ),
                    ),Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 130,
                        child: Column(
                          children: [
                            Image.asset("assets/over.png"),
                            Text("Kelebihan bobot",style: blackTextStyle.copyWith(
                                color: blue,
                                fontWeight: FontWeight.bold
                            ),),
                            Text("25  - 29.9",style: blackTextStyle.copyWith(
                              color: blue,
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)
                        ),
                      ),
                    ),Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 130,
                        child: Column(
                          children: [
                            Image.asset("assets/overweight.png"),
                            Text("Obesitas",style: blackTextStyle.copyWith(
                                color: blue,
                                fontWeight: FontWeight.bold
                            ),),
                            Text("> 30",style: blackTextStyle.copyWith(
                              color: blue,
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

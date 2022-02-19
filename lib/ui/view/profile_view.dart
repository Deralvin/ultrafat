import 'package:flutter/material.dart';
import 'package:ultrafat/constants/theme.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    alignment: Alignment.center,
                    child: Text("M", style: blackTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),),
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Martin De Brunye",
                        style: blackTextStyle.copyWith(
                            color: blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      Text(
                        "Jurnalis",
                        style: blackTextStyle.copyWith(color: blue),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Riwayat anda",
                style: blackTextStyle.copyWith(
                    color: blue, fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

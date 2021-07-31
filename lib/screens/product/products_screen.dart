import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('VMAP UPM'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () 
          async {
            const url = "https://github.com/HakimFadzli/Vmap"; 
            if (await canLaunch(url)) { 
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }
           //lead to github page for future update        
        ),
      ],
    );
  }
}

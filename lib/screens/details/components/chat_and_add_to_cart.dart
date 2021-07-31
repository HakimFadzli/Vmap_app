import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:furniture_app/models/product.dart';

import '../../../constants.dart';

class ChatAndAddToCart extends StatelessWidget {

  //final Product product;
  

  const ChatAndAddToCart({
    Key key,//this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
        crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
        children: <Widget>[
          FlatButton.icon(
            onPressed: ()//add links##
            async{
            const url = "https://educ.upm.edu.my/?L=en";               //"${this.product.url}"; //add individual links
            if (await canLaunch(url)) { 
              await launch(url);
            } else {
              throw 'Could not launch $url';
            } 
            }
          ,
            icon: SvgPicture.asset(
              "assets/icons/find_in_page.svg",
              height: 18,
            ),
            label: Text(
              "Learn More",
              style: TextStyle(color: Color(0xFF747474)),
            ),
          ),
        ],
      ),
    );
  }
}

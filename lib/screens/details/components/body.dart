import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/components/icon_card.dart';
import 'package:plantapp/screens/details/components/image_and_icons.dart';
import 'package:plantapp/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  final String image, title, country;
  final int price;

  const Body({Key? key,required this.image,required this.title,required this.country,required this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImageAndIcons(image: image,),
          TitleAndPrice(title: title, country: country, price: price,),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width:size.width/2,
                height: 84,
                child: FlatButton(
                  shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
          //SizedBox(height: kDefaultPadding*2)

        ],
      ),
    );
  }
}


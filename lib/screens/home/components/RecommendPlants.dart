import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            title: "samantha",
            country: "russia",
            price: 400,
            image: "assets/images/image_1.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsScreen(
                  title: "samantha",
                  country: "russia",
                  price: 400,
                  image: "assets/images/image_1.png",
                )),
              );
            },
          ),
          RecommendPlantCard(
            title: "angelica",
            country: "russia",
            price: 540,
            image: "assets/images/image_2.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsScreen(
                  title: "angelica",
                  country: "russia",
                  price: 540,
                  image: "assets/images/image_2.png",
                )),
              );
            },
          ),
          RecommendPlantCard(
            title: "samantha",
            country: "russia",
            price: 750,
            image: "assets/images/image_3.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsScreen(
                  title: "samantha",
                  country: "russia",
                  price: 750,
                  image: "assets/images/image_3.png",
                )),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country\n".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

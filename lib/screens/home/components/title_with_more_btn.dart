import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,required this.title, this.press,
  }) : super(key: key);

  final String title;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title,),
          Spacer(),
          FlatButton(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: press,
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key, this.text="",
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children:  [
          Padding(
            padding: const EdgeInsets.only(left : kDefaultPadding/4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: kPrimaryColor.withOpacity(0.2),
              height: 7,
              margin: const EdgeInsets.only(left: kDefaultPadding / 4),
            ),
          ),
        ],
      ),
    );
  }
}

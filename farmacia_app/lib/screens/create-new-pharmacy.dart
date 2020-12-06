import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_08/generated/l10n.dart';
import 'package:lab_08/pallete.dart';
import 'package:lab_08/widgets/widgets.dart';

class CreateNewPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/farmacia3.jpg',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    S.of(context).simpleText10,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.hospital,
                    hint: S.of(context).simpleText11,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  TextInputField(
                    icon: FontAwesomeIcons.paperPlane,
                    hint: S.of(context).simpleText12,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'ListPharmacy'),
                child: Container(
                  child: Text(
                    S.of(context).simpleText10,
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/'),
                child: Container(
                  child: Text(
                    S.of(context).button,
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_08/generated/l10n.dart';
import 'package:lab_08/pallete.dart';
import 'package:lab_08/widgets/background-image.dart';
import 'package:lab_08/widgets/rounded-button.dart';
import 'package:lab_08/widgets/text-field-input.dart';

class EditPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/farmacia4.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: Text(
              S.of(context).simpleText13,
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.hospital,
                      hint: S.of(context).simpleText13,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.paperPlane,
                      hint: S.of(context).simpleText14,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'ListPharmacy');
                          },
                          child: Text(
                            S.of(context).simpleText13,
                            style: kBodyText.copyWith(
                                color: kBlue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
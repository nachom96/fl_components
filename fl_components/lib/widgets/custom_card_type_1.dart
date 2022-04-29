import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un título'),
          subtitle: Text(
              'Minim elit mollit fugiat fugiat do esse ut labore magna nulla nulla labore est. Dolore sint officia reprehenderit fugiat incididunt minim id anim voluptate eu occaecat irure exercitation. Pariatur consequat dolor aliqua cupidatat consectetur fugiat id aute dolor ea exercitation do. Ea do eu eiusmod eu aliquip magna et ad commodo officia sunt. Nulla anim est cupidatat deserunt labore veniam amet nostrud eu nostrud et esse quis nisi. Tempor aliquip anim adipisicing sunt do ipsum excepteur officia et in tempor ullamco aliqua commodo. Ex cupidatat eu aute ex.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
class ReusebleChild extends StatelessWidget {
  ReusebleChild({this.label, this.awesomeIcons});

  final String label;
  final IconData awesomeIcons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          awesomeIcons,
          size: 50.0,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: kLabeltextStyle,
        )
      ],
    );
  }
}

class ReusebleCard extends StatelessWidget {
  ReusebleCard({@required this.color, this.childCard});

  final Color color;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: childCard,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      fillColor: Color(0xFF4C4F5),
      onPressed: onPressed,
    );
  }
}
class ReusebleButton extends StatelessWidget {
  const ReusebleButton({
    @required this.onTap,this.label
  });
  final Function onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomheigth,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}

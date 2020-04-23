import 'package:flutter/material.dart';
import 'package:mypersonalwebsite/core/utils/size_config.dart';

class PlaceholderImageWithText extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color color;
  final Color backgroundColor;

  const PlaceholderImageWithText(
      {Key key,
      this.cornerRadius = 0,
      this.color,
      this.backgroundColor,
      this.width = 100,
      this.height = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fgColor = color ?? Color(0xfff2f2f2);
    return Container(
      width: 60 * SizeConfig.widthMultiplier ,
      height:18 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(child: Container(color: fgColor)),
          Stack(
            children: <Widget>[
              Container(
                  color: fgColor,
                  height: 16,
                  margin: EdgeInsets.only(top: 12, left: 10, right: 70)),
              Container(
                  color: fgColor,
                  height: 10,
                  margin: EdgeInsets.only(top: 40, left: 10, right: 30)),
              Container(
                  color: fgColor,
                  height: 10,
                  margin: EdgeInsets.only(top: 56, left: 10, right: 10)),
              Container(
                  color: fgColor,
                  height: 10,
                  margin: EdgeInsets.only(
                      top: 72, left: 10, right: 60, bottom: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

var gridPlaceholder = GridView.count(
  crossAxisCount: 3,
  children: List.generate(20, (index) {
    return PlaceholderImageWithText(
        color: Color(0xFF99D3F7), backgroundColor: Color(0xFFC7EAFF));
  }),
);
var listPlaceholder = Container(
  //TODO
  height: 300,
    child: ListView.separated(
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) => PlaceholderImageWithText(),
  separatorBuilder: (context, index) => SizedBox(height: 10),
  itemCount: 20,
));


import 'package:flutter/material.dart';

class PaymentOptionDesign extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color containerColor;
  final Color color;

  PaymentOptionDesign(this.icon, this.text, this.containerColor, this.color);

  @override
  _PaymentOptionDesignState createState() => _PaymentOptionDesignState();
}

class _PaymentOptionDesignState extends State<PaymentOptionDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: widget.color,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: widget.color,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
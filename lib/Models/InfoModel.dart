import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InfoModel{
  final String infoName, infoHint, infoDescription;
  final IconData iconData;
  InfoModel({this.infoName, this.infoHint, this.infoDescription, this.iconData});
}

List<InfoModel> infoModelList = [

  InfoModel(
      infoName: "App Info",
      infoHint: "Everything you need to Know about Juru",
      infoDescription: "",
      iconData: Icons.info_outline,

  ),

  InfoModel(
    infoName: "Rate US",
    infoHint: "Winner take home 10 points.",
    infoDescription: "",
    iconData: Icons.verified_user,
  ),

  InfoModel(
    infoName: "Invite",
    infoHint: "Invite your ..",
    infoDescription: "",
    iconData: Icons.send,
  ),

  InfoModel(
    infoName: "FAQs",
    infoHint: "Frequetly Asked Questions",
    infoDescription: "",
    iconData: Icons.question_answer,
  ),

  InfoModel(
    infoName: "Support Inbox",
    infoHint: "Support this Initiative",
    infoDescription: "",
    iconData: Icons.inbox,
  ),

  InfoModel(
    infoName: "Feedback",
    infoHint: "Report a problem",
    infoDescription: "",
    iconData: Icons.feedback,
  ),

  InfoModel(
    infoName: "Disclaimer",
    infoHint: "Terms and Privacy Policy",
    infoDescription: "",
    iconData: Icons.report_problem,
  ),


];
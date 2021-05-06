import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registrationform_assignment/utils/ColorUtils.dart';
import 'package:registrationform_assignment/utils/StringsUtils.dart';

class MyHomePage extends StatefulWidget
{
  MyHomePageState createState()=> MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeStatusBarColor();
  }

  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar:AppBar(
          backgroundColor:Colors.white,
          elevation:0,
          title:Text(StringsUtils.users,style:GoogleFonts.notoSans(textStyle:TextStyle(fontSize:20,
          fontWeight:FontWeight.w800,color:Colors.black87)),),
          centerTitle:true,
        ),
        bottomNavigationBar:
        getRegisterButton(),
        body:Container(
          color:Colors.white,
          child:Center(
            child:Text(StringsUtils.noRegisterations,style:GoogleFonts.notoSans(textStyle:TextStyle(fontSize:14,
                fontWeight:FontWeight.w600,color:Colors.black54)),),
          )
        ),
      );
  }

  getRegisterButton() {
    return SizedBox(
      width:MediaQuery.of(context).size.width,
      height:55,
      child:RaisedButton(
          color:ColorUtils.colorConvert(ColorUtils.primaryColor).withOpacity(1),
          child:Text(StringsUtils.register,style:GoogleFonts.notoSans(textStyle:TextStyle(fontSize:14,
              fontWeight:FontWeight.w600,color:Colors.white)),),
          onPressed:(){
            Navigator.pushNamed(context,'/PersonalInfoPage');
          }),
    );
  }

  void changeStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor:Colors.white
        )
    );
  }
}
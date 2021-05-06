import 'package:flutter/material.dart';
import 'package:registrationform_assignment/utils/StringsUtils.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfoPage extends StatefulWidget{

  PersonalInfoPageState createState()=>PersonalInfoPageState();
}

class PersonalInfoPageState extends State<PersonalInfoPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:Colors.white,
        centerTitle:true,
        elevation:0,
        leading:IconButton(icon:Icon(Icons.arrow_back),onPressed:(){
          Navigator.pop(context);
        },color:Colors.black87,),

        title:Text(StringsUtils.register,style:GoogleFonts.notoSans(textStyle:TextStyle(fontSize:20,
            fontWeight:FontWeight.w800,color:Colors.black87)),),
      ),

      body: Container(

      ),
    );
  }
}
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

var widgetText = TextStyle(color: Colors.white);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text('Profile'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              ClipOval(
                child: Image.asset('assets/ninja.jpg', height:100 , width: 100,
                fit: BoxFit.cover,),

              ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Jully Salomsy', style: TextStyle(color: Colors.white),),
                SizedBox(width:5),
                Container(
                  padding:EdgeInsets.all(5),
                  color:Colors.purple,
                  child: Text('PRO', style: widgetText,),
                ),

              ],


            ),
            SizedBox(height:5 ,),
            Text('example@gmail.com'),
            SizedBox(height: 30,),
            _custom('title', Icons.cloud, widgetText, Colors.amber),
            SizedBox(height: 10,),
            _custom('Apple Calendar', Icons.calendar_today, widgetText, Colors.green),
            SizedBox(height: 10,),
            _custom('General Setting', Icons.settings, widgetText, Colors.red)
            
          ],
        ),
      ),
    );
  }
}


Widget _custom(String title, IconData iconData, var widgetText , Color color){
  return Container(
    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Row(

      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Container(
            color: color,
            height: 44,
            width: 44,
            child: Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(child: Padding(padding: EdgeInsets.only(left: 8),
          child: Text(
              title,
            style: widgetText,
          ),
        )),
        Text('Disabled',
          style: widgetText,
        )
      ],
    ),

  );
}
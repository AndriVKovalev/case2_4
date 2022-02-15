import 'package:case2_4/reg.dart';
import 'package:case2_4/theme_sheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
  theme: themeShemes(),
  home: const MyApp(),
  ),
  );

}
// the root widget of our application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyleField = OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular( 36)),
        borderSide: BorderSide(
            color: Color(0xFFECEFF1), width: 1
        )
    );
    const inpuTexteStyle = TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4),
        fontFamily: 'Roboto');
    const linkTextStyle = TextStyle(fontSize: 16, color: Color(0xFF0079D0),
        fontFamily: 'Roboto');



      return Scaffold(
        appBar: AppBar( title: const Text("AppS"),
          actions: [
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp2()
                ),
              );
            }, icon: const Icon(Icons.arrow_forward)),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox( height: 81,),
                SizedBox(width: 103,height: 80,child:  Image.asset('assets/images/dartlogo.png') ,),
                const SizedBox(height: 19,),
                const SizedBox(width: 250,
                  child: Text("Введите логин в виде 10 цифр номера телефона",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6),
                        fontFamily: 'Roboto'),
                  ),
                ),
                const SizedBox(height: 19,),
                const SizedBox( height: 34,
                  child: SizedBox(width: 250,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        filled: true,
                        fillColor: Color(0xFFECEFF1),
                        enabledBorder: borderStyleField ,
                        focusedBorder: borderStyleField ,
                        hintText: '+7',
                        hintStyle: inpuTexteStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 19,),
                const SizedBox( height: 34,
                  child: SizedBox(width: 250,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10.0, 8.0, 00.0 , 7.0,),
                        filled: true,
                        fillColor: Color(0xFFECEFF1),
                        enabledBorder: borderStyleField ,
                        focusedBorder: borderStyleField ,
                        hintText: '******',
                        hintStyle: inpuTexteStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {}, child: const Text(' Войти'),
                  style: ElevatedButton.styleFrom(
                    //primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)
                    ),
                  ),
                )
                ),
                const SizedBox(height: 62,),
                InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                  onTap: () {},),
                const SizedBox(height: 20,),
                InkWell(child: const Text('Забыли пароль?', style: linkTextStyle,),
                  onTap: () {},),


              ],
            ),
          ),
        ), //   <--- image here
 //     ),
    );
  }
}

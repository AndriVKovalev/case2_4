import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// the root widget of our application
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyleField = OutlineInputBorder(
        borderRadius:  BorderRadius.all(Radius.circular( 36)),
        borderSide: BorderSide(
            color: Color(0xFFECEFF1), width: 1
        )
    );
    const inpuTexteStyle = TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.4),
        fontFamily: 'Roboto', );
    const linkTextStyle = TextStyle(fontSize: 16, color: Color(0xFF5C5C5C ),
        fontFamily: 'Nunito', letterSpacing: -1, fontWeight: FontWeight.bold ) ;
    const labelTexteStyle = TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1),
      fontFamily: 'Roboto', );



      return Scaffold(
        appBar: AppBar( title: const Text("AppS"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //SizedBox(height: 77,),
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("assets/images/Group69.png"),
                        height: 20,
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                        child: const Text("Регистрация", textAlign: TextAlign.center,
                        style: linkTextStyle,),
                        height: 20,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 5,
                    ),
                  ],
                ),
                const SizedBox(height: 1,
                 ),
                const SizedBox(width: 300,
                  child: Divider(height: 1,color: Color.fromRGBO(196, 196, 196, 1),

                  ),
                ),
                const SizedBox(height: 7,),
                const SizedBox(width: 300,
                  child: Text("Чтобы зарегистрироваться введите свой номер телефона и почту",
                    style:  inpuTexteStyle, textAlign: TextAlign.center,),
                ),
                const SizedBox(height: 16,),
                const Text("Телефон",
                  style:  labelTexteStyle, textAlign: TextAlign.center,),
                const SizedBox(height: 6,),
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

                const SizedBox(height: 14,),
                const Text("Почта",
                  style:  labelTexteStyle, textAlign: TextAlign.center,),
                const SizedBox(height: 6,),
                const SizedBox( height: 34,
                  child: SizedBox(width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        filled: true,
                        fillColor: Color(0xFFECEFF1),
                        enabledBorder: borderStyleField ,
                        focusedBorder: borderStyleField ,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24,),
            const SizedBox(width: 300,
              child: Text("Вам придет четырехзначный код, который будет вашим паролем",
              style:  inpuTexteStyle, textAlign: TextAlign.center,),
            ),
                const SizedBox(height: 14,),
                const SizedBox(width: 252,
                  child: Text('''Изменить пароль можно 
будет в личном кабинете после 
регистрации''',
                    style:  inpuTexteStyle, textAlign: TextAlign.center,),
                ),
                const SizedBox(height: 32,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {}, child: const Text('Отправить код'),
                  style: ElevatedButton.styleFrom(
                   // primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)
                    ),
                  ),
                )
                ),
              ],
            ),
          ),
        ), //   <--- image here
    );
  }
}

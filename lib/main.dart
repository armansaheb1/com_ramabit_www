import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const FirstScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const SecondScreen(),
        },
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: const Locale(
            "fa", "IR") // OR Locale('ar', 'AE') OR Other RTL locales,
        );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Padding(
        padding: EdgeInsets.only(top: 25),
        child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
            width: 250,
            backgroundColor: Color.fromARGB(255, 52, 51, 41),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 16, right: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundImage: AssetImage('images/man.png')),
                            Padding(
                                padding: EdgeInsets.only(top: 0, right: 10)),
                            Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'sansir'),
                                'سلام فلانی'),
                          ],
                        ))
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 16, right: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(children: [
                                          Icon(color: Colors.white, Icons.home),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 0, right: 10)),
                                          Text(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'sansir'),
                                              'خانه'),
                                        ]),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.dashboard),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'داشبورد'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.person),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'اطلاعات کاربری'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.rectangle_outlined),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'پلن ها'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.balance),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'موجودی حساب'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.paid),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'کسب درآمد'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.battery_charging_full),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'شاژ حساب'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.outbox),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'برداشت'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.history_toggle_off),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'تاریخچه درآمد ها'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.history),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'تراکنش ها'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.support),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'پشتیبانی'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.verified_user_outlined),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'احراز هویت'),
                                          ],
                                        ),
                                        Divider(
                                          color: Color.fromARGB(0, 0, 0, 0),
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.exit_to_app),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, right: 10)),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'خروج'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                )
              ],
            )),
      ),
      appBar: AppBar(
        // leading: Image(image: AssetImage('images/logo.png')),

        foregroundColor: const Color.fromARGB(255, 41, 41, 41),
        backgroundColor: const Color.fromARGB(255, 240, 187, 19),
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
      body: const Text('s'),
    );
  }
}

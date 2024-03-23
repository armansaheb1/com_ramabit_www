import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR") // OR Locale('ar', 'AE') OR Other RTL locales,
      ,
      home: AppBarExample(),
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
                            // Icon(color: Colors.white, Icons.home),
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
                                          Text(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'sansir'),
                                              'خانه'),
                                        ]),
                                        Row(
                                          children: [
                                            Icon(
                                                color: Colors.white,
                                                Icons.home),
                                            Text(
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'sansir'),
                                                'خانه'),
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
        backgroundColor: Color.fromARGB(255, 240, 187, 19),
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(child: null),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Mobile width <= 600
//Desktop width > 600
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // if (Platform.isIOS || Platform.isMacOS) {
    //   return const AndroidLayout();
    // }
    return const IosLayout();
  }
}

class IosLayout extends StatelessWidget {
  const IosLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: TabScaffoldExample(),
    );
  }
}

class AndroidLayout extends StatelessWidget {
  const AndroidLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class TabScaffoldExample extends StatefulWidget {
  const TabScaffoldExample({super.key});

  @override
  State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
}

class _TabScaffoldExampleState extends State<TabScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search_circle_fill),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {

        if (index == 2) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return const CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('User'),
                ),
                child: Center(
                  child: Text('User Page'),
                ),
              );
            },
          );
        }

        if (index == 3) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return const CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Settings'),
                ),
                child: Center(
                  child: Text('Settings Page'),
                ),
              );
            },
          );
        }

        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: const Text('Next page'),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              middle: Text('Page 2 of tab $index'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

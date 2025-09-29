import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:someone/widgets/request_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi Ehi,'),
        actions: [Icon(Icons.notifications_none)],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1,234.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 7),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/cc/7e/67/cc7e6738462a426846b08dca92fbe935.jpg',
                          ),
                        ),
                        Text('GHS'),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Here are some thing you can do'),
              SizedBox(height: 8),
              GridView.count(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                crossAxisCount: 2,
                children: [
                  RequestWidget(
                    icons: Icons.logout,
                    title: 'Pay someone',
                    subtitle1: 'To wallet, bank or',
                    subtitle2: 'mobile number',
                    couleur: Colors.blueGrey,
                  ),
                  RequestWidget(
                    icons: Icons.login,
                    title: 'Request money',
                    subtitle1: 'Request money from',
                    subtitle2: 'OroboPay users',
                    couleur: Colors.greenAccent,
                  ),
                  RequestWidget(
                    icons: Icons.phone_android,
                    title: 'Buy airtime',
                    subtitle1: 'Top-up or send',
                    subtitle2: 'airtime across Africa',
                    couleur: Colors.orangeAccent,
                  ),
                  RequestWidget(
                    icons: Icons.account_balance_wallet_outlined,
                    title: 'Pay bill',
                    subtitle1: 'Zero transaction frees',
                    subtitle2: 'when you pay',
                    couleur: Colors.lightBlue,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text('Your favorites people'),
              SizedBox(height: 5),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(radius: 30, child: Icon(Icons.add)),
                        Text('Add'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                'https://i.pinimg.com/736x/25/35/16/253516431f7244b0052d2224a3854ea6.jpg',
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/736x/cc/7e/67/cc7e6738462a426846b08dca92fbe935.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('Grace L.'),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Text(
                                'LA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              backgroundColor: Colors.blueGrey,
                            ),
                            Positioned(
                              bottom: 5,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/736x/cc/7e/67/cc7e6738462a426846b08dca92fbe935.jpg',
                                ),
                                //backgroundColor: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                        Text('Lawrence A.'),
                      ],
                    ),
                  ),
                ],
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                elevation: 10,
                currentIndex: 2,
                iconSize: 30,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'balance',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.radio_button_checked),
                    label: 'radio',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outlined),
                    label: 'profil',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz),
                    label: 'menu',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

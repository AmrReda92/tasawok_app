import 'package:flutter/material.dart' ;
import 'package:practise_three/features/favourite/presentation/ui/favourite_screen.dart';
import 'package:practise_three/features/home/presentation/ui/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screens =[
    HomeScreen(),
    FavouriteScreen(),
  ];
  int currentScreen=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BottomNavigationBar(
          elevation: 8,
          selectedItemColor: ColorScheme.of(context).primary,
          unselectedItemColor: Colors.grey,
          currentIndex: currentScreen,
          onTap: (index){
            setState(() {
              currentScreen=index;
            });
          },
          type: BottomNavigationBarType.fixed,
            items:
            [
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite"),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            ]
        ),
      ),
      body: screens[currentScreen],
    );
  }
}

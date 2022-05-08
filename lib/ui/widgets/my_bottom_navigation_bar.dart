import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: [
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                : SvgPicture.asset('assets/images/icon_my_parcel_grey.svg'),
            label: 'My Parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/images/icon_send_parcels.svg')
                : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
            label: 'Send Parcels'),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/images/icon_center_parcels.svg')
                : SvgPicture.asset('assets/images/icon_center_parcel_grey.svg'),
            label: 'Parcel center'),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      onTap: onItemTapped,
    );
  }
}

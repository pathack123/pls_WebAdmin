import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:webadmin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:webadmin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:webadmin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:webadmin/views/screens/side_bar_screens/products_screen.dart';
import 'package:webadmin/views/screens/side_bar_screens/seller_screen.dart';
import 'package:webadmin/views/screens/side_bar_screens/upload_banner.dart';
import 'package:webadmin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSlector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;
      case SellerScreen.routeName:
        setState(() {
          _selectedItem = SellerScreen();
        });

        break;
      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItem = WithdrawalScreen();
        });

        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });

        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });

        break;
      case ProductsScreen.routeName:
        setState(() {
          _selectedItem = ProductsScreen();
        });

        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        sideBar: SideBar(
          items: [
            AdminMenuItem(
                title: 'Dashboard',
                icon: Icons.dashboard,
                route: DashboardScreen.routeName),
            AdminMenuItem(
                title: 'Seller',
                icon: CupertinoIcons.person_3,
                route: SellerScreen.routeName),
            AdminMenuItem(
                title: 'Withdrawal',
                icon: CupertinoIcons.money_dollar,
                route: WithdrawalScreen.routeName),
            AdminMenuItem(
                title: 'Orders',
                icon: CupertinoIcons.shopping_cart,
                route: OrderScreen.routeName),
            AdminMenuItem(
                title: 'Categories',
                icon: Icons.category,
                route: CategoriesScreen.routeName),
            AdminMenuItem(
                title: 'Products',
                icon: Icons.shop,
                route: ProductsScreen.routeName),
            AdminMenuItem(
                title: 'Upload Banners',
                icon: CupertinoIcons.add,
                route: UploadBannerScreen.routeName),
          ],
          selectedRoute: '',
          onSelected: (item) {
            screenSlector(item);
          },
          header: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                "Pls Store Panel",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                "footer",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        body: _selectedItem);
  }
}

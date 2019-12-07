import 'package:flutter/cupertino.dart';
import 'styles.dart';
import 'product_list_tab.dart';   // NEW
import 'search_tab.dart';         // NEW
import 'shopping_cart_tab.dart';  // NEW

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          //Alist of bottom nav items
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text('products')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), title: Text('search')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), title: Text('Cart')),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ProductListTab(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ShoppingCartTab(),
              );
            });
        }
      },
    );
  }
}

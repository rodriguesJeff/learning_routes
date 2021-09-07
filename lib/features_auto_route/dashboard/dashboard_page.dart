import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        BooksTabRoute(),
        LanguagesTabRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Livros'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.language), label: 'Linguagens'),
            ],
          ),
        );
      },
    );
  }
}

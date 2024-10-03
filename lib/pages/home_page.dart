import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myportfolio/pages/sections/my_bio.dart';
import 'package:myportfolio/pages/sections/my_projects.dart';
import 'package:myportfolio/pages/sections/my_skills.dart';
import 'package:myportfolio/pages/sections/my_top.dart';
import 'package:myportfolio/pages/sections/my_works.dart';
import 'package:myportfolio/widgets/drawer.dart';
import 'package:myportfolio/widgets/footer.dart';
import 'package:myportfolio/widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            drawer: MyDrawer(
              onScrollToSection: scrollToSection,
            ),
            body: Focus(
              autofocus: true,
              onKeyEvent: (FocusNode node, KeyEvent event) {
                if (event is KeyDownEvent) {
                  var offset = _scrollController.offset;
                  if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
                    setState(() {
                      _scrollController.animateTo(offset - 200,
                          duration: const Duration(milliseconds: 30),
                          curve: Curves.ease);
                    });
                  } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                    setState(() {
                      _scrollController.animateTo(offset + 200,
                          duration: const Duration(milliseconds: 30),
                          curve: Curves.ease);
                    });
                  }
                }
                return KeyEventResult.ignored;
              },
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  MyTopBar(
                    onScrollToSection: scrollToSection,
                  ),
                  const SliverToBoxAdapter(
                    child: Column(
                      children: [
                        MyTop(),
                        SizedBox(height: 40),
                        MyBio(),
                        SizedBox(height: 40),
                        MySkills(),
                        SizedBox(height: 40),
                        MyWorks(),
                        SizedBox(height: 40),
                        MyProjects(),
                        SizedBox(height: 40),
                        MyFooter(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

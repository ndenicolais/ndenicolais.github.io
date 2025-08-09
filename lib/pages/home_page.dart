import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myportfolio/pages/sections/about_me.dart';
import 'package:myportfolio/pages/sections/contacts.dart';
import 'package:myportfolio/pages/sections/education.dart';
import 'package:myportfolio/pages/sections/projects.dart';
import 'package:myportfolio/pages/sections/skillset.dart';
import 'package:myportfolio/pages/sections/experiences.dart';
import 'package:myportfolio/pages/sections/services.dart';
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
            drawer: MyDrawer(onScrollToSection: scrollToSection),
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
                  TopBar(onScrollToSection: scrollToSection),
                  const SliverToBoxAdapter(
                    child: Column(
                      spacing: 20,
                      children: [
                        AboutMe(),
                        Services(),
                        Skillset(),
                        Experiences(),
                        Projects(),
                        Education(),
                        Contacts(),
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

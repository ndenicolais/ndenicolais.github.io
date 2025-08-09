import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/style.dart';

class AnimatedProfileRole extends StatefulWidget {
  final StyleParams styles;
  const AnimatedProfileRole({super.key, required this.styles});

  @override
  State<AnimatedProfileRole> createState() => _AnimatedProfileRoleState();
}

class _AnimatedProfileRoleState extends State<AnimatedProfileRole> {
  final List<String> roles = [
    'Flutter',
    'Android',
    'Mobile App',
    'Web',
    'Software',
  ];
  int _currentRole = 0;
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  Timer? _cursorTimer;
  bool _showCursor = true;
  bool _isTyping = true;

  @override
  void initState() {
    super.initState();
    _startCursorBlink();
    _startTypewriter();
  }

  void _startCursorBlink() {
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 450), (timer) {
      setState(() {
        _showCursor = !_showCursor;
      });
    });
  }

  void _startTypewriter() {
    String fullText = "${roles[_currentRole]} Developer";
    _isTyping = true;
    _typewriterTimer =
        Timer.periodic(const Duration(milliseconds: 140), (timer) {
      if (_charIndex < fullText.length) {
        setState(() {
          _displayedText += fullText[_charIndex];
          _charIndex++;
        });
      } else {
        setState(() {
          _isTyping = false;
        });
        _typewriterTimer?.cancel();
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            _currentRole = (_currentRole + 1) % roles.length;
            _displayedText = '';
            _charIndex = 0;
            _isTyping = true;
          });
          _startTypewriter();
        });
      }
    });
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _cursorTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayedText + ((_showCursor || _isTyping) ? "|" : ""),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: widget.styles.fontMedium,
      ),
    );
  }
}

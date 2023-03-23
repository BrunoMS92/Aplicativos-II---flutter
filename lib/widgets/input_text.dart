
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatelessWidget {
  final String? placeholder;
  InputText({this.placeholder});

  @override
  Widget build(BuildContext context) {
    return TextField(
    style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 12,
      ), 
      hintText: placeholder,
      filled: true,
      fillColor: Color.fromARGB(255, 126, 110, 173).withOpacity(0.20),

      hintStyle: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255). withOpacity(0.40),
      ),
      ),
    );
  }
}
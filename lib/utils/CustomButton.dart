import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CUstomButton extends StatelessWidget {
  final VoidCallback voidCallback;
  final Color color;
  final String title;
  final Color textColor;
  const CUstomButton({
    super.key,
    required this.voidCallback,
    required this.color,
    required this.title,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: voidCallback,
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold, fontSize: 21, letterSpacing: 0),
            ),
          ),
        ));
  }
}

// class CustomNavButton extends StatelessWidget {
//   final IconData icon;
//   final ValueChanged<int> onpressed;
//   final String label;
//   final int index;
//   final bool isSelected;
//   CustomNavButton(
//       {super.key,
//       required this.icon,
//       required this.onpressed,
//       required this.label,
//       required this.index,
//       required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           IconButton(
//             onPressed: () => onpressed,
//             icon: Icon(icon),
//             color: isSelected ? Colors.amber : Colors.white,
//           ),
//           const SizedBox(
//             width: 1,
//           ),
//           Text(
//             isSelected ? label : "",
//             style: GoogleFonts.lato(
//                 fontSize: 19,
//                 fontWeight: FontWeight.bold,
//                 color: isSelected ? Colors.amber : Colors.white),
//           )
//         ],
//       ),
//     );
//   }
// }

// Widget _CustomNavButton(
//   IconData icon;
//   bool isSelected,
//   String label,
//   ValueChanged<int> onPressed,
//   int index,
// ){
//   return
// }
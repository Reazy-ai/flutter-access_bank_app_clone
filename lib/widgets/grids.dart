import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:google_fonts/google_fonts.dart';
import '../providers/grid_tiles.dart';

class Grids extends StatelessWidget {
  const Grids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: EdgeInsets.all(5),
      crossAxisCount: 4,
      childAspectRatio: 1 / 1.1,
      children: gridTiles
          .map(
            (e) => Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.transparent),
              margin: const EdgeInsets.all(2),
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    e.tileIcon,
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.title,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}


// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         childAspectRatio: 0.9,
//         crossAxisCount: 4,
//       ),
//       itemBuilder: (ctx, i) => Container(
//         decoration: BoxDecoration(
//             border: Border.all(width: 1),
//             borderRadius: BorderRadius.circular(3),
//             color: Colors.transparent),
//         margin: const EdgeInsets.all(2),
//         child: InkWell(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               gridTiles[i].tileIcon,
//               const SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 gridTiles[i].title,
//                 style: const TextStyle(fontSize: 11, color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
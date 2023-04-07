import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
        )
      ),
       body: SlidingSheet(
      elevation: 8,
      cornerRadius: 40,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.38, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: const Center(
        child: Text('This widget is below the SlidingSheet',style: TextStyle(
          color: Colors.white
        ),),
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          height: 500,
          child: Center(
            child: Text('This is the content of the sheet'),
          ),
        );
      },
    ),
    );
  }
}
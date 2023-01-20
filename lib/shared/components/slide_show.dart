// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SliderShow extends StatefulWidget {
  const SliderShow({Key? key}) : super(key: key);

  @override
  State<SliderShow> createState() => _SliderShowState();
}

class _SliderShowState extends State<SliderShow> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      /// Width of the [ImageSlideshow].
      width: double.infinity,

      /// Height of the [ImageSlideshow].
      height: 250,

      /// The page to show when first creating the [ImageSlideshow].
      initialPage: 0,

      /// The color to paint the indicator.
      indicatorColor: Colors.blue,

      /// The color to paint behind th indicator.
      indicatorBackgroundColor: Colors.grey,

      /// The widgets to display in the [ImageSlideshow].
      /// Add the sample image file into the images folder
      children: [
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/images/image2.jpg',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/images/image3.jpg',
          fit: BoxFit.fitWidth,
        ),
        Image.asset(
          'assets/images/image4.jpg',
          fit: BoxFit.fitWidth,
        ),
      ],

      /// Called whenever the page in the center of the viewport changes.
      onPageChanged: (value) {
        // ignore: avoid_print
        // print('Page changed: $value');
      },

      /// Auto scroll interval.
      /// Do not auto scroll with null or 0.
      autoPlayInterval: 3000,

      /// Loops back to first slide.
      isLoop: true,
    );
  }
}

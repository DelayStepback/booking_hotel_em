import 'package:booking_hotel_em/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderDefault extends StatefulWidget {
  const SliderDefault({super.key, required this.images});

  final List<String>? images;

  @override
  State<SliderDefault> createState() => _SliderDefaultState();
}

class _SliderDefaultState extends State<SliderDefault> {
  final PageController _pageController = PageController(initialPage: 0);
  late int currPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257.h,
      width: 343.w,
      child: Stack(children: [
        PageView.builder(
            itemCount: widget.images?.length,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                currPage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              return  ClipRRect(
                borderRadius: BorderRadius.circular(15.w),
                child: Image.network(
                    widget.images![pagePosition],
                   fit: BoxFit.fitHeight,
                   // fit: BoxFit.cover,

                ),
              );
            }),
        Positioned.fill(
          bottom: 8.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: 17.h,
              width: (15 + widget.images!.length*12).w ,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)).r,
                color: AppColors.primaryWhite
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _indicators(widget.images?.length, currPage)),
            ),
          ),
        )
      ]),
    );
  }
}

List<Widget> _indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      margin: index != imagesLength- 1? const EdgeInsets.only(right: 5).w:const EdgeInsets.only(right: 0).w,
      width: 7.r,
      // currentIndex == index
      height: 7.r,
      decoration: BoxDecoration(

        color: currentIndex == index ? AppColors.primaryBlack: Color.fromRGBO(0, 0, 0, 0.27 - 0.05*index),
//          shape: currentIndex == index ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: const BorderRadius.all(Radius.circular(51)).w,
      ),
    );
  });
}

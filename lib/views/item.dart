import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../features/model.dart';

class Item extends StatelessWidget {
  HotelModel? data;

  Item({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          17.r,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 7.r,
            offset: Offset(
              0.w,
              5.h,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                data!.image,
                // "https://www.tboholidays.com//imageresource.aspx?img=FbrGPTrju5cc0AnFUdZvcaT421NYlIIKB899kblH89FRaXRjheAxF0mYu56nxq7ybSts6ps0s7BI/8ugu12yto0k2T4b0SzW",
                fit: BoxFit.cover,
                height: 100.h,
                width: double.infinity,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(
                      0.5,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25.r,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
            ),
            child: Row(
              children: [
                // Icon(
                //   Icons.star,
                // ),
                RatingBar.builder(
                  initialRating: data!.starts.toDouble(),
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: data!.starts.toInt(),
                  ignoreGestures: true,
                  itemSize: 20.r,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Text(
                  "Hotel",
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              data!.name,
              // "Name Of Hotel",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.w,
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 22.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          17.r,
                        ),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          data!.reviewScore.toString(),
                          // "8.8",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      data!.review,
                      // "Excellent",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                        ),
                        Text(
                          data!.address,
                          // "Hotel Location",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 100.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8.r,
              ),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      3.r,
                    ),
                    color: Colors.blue.withOpacity(
                      0.3,
                    ),
                  ),
                  width: 125.w,
                  height: 20.h,
                  margin: EdgeInsets.only(top: 5.h),
                  child: Center(
                    child: Text(
                      "Our lowest price",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          data!.price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "View Deal >",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Renaissance",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.w, top: 10.h),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "More prices",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

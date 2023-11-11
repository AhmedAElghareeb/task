import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            17.r,
          ),
          color: Colors.grey[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://www.tboholidays.com//imageresource.aspx?img=FbrGPTrju5cc0AnFUdZvcaT421NYlIIKB899kblH89FRaXRjheAxF0mYu56nxq7ybSts6ps0s7BI/8ugu12yto0k2T4b0SzW",
            fit: BoxFit.cover,
            height: 100.h,
            width: double.infinity,
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
              ),
              Text(
                "Hotel",
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Name Of Hotel",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Container(
                height: 25.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    17.r,
                  ),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "8.8",
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                "Excellent",
              ),
              SizedBox(
                width: 5.w,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                  ),
                  Text(
                    "Hotel Location",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
                border: Border.all(color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Our lowest price",
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("161 #"),
                    Text(
                      "View Deal",
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  "Renaissance",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

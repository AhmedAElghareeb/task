import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(17.r),
                    bottomLeft: Radius.circular(17.r),
                  ),
                  color: Colors.grey[100]),
              margin: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 5.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_list_alt,
                          size: 25.r,
                          color: Colors.lightBlue[300],
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.lightBlue[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.sort,
                          size: 25.r,
                          color: Colors.lightBlue[300],
                        ),
                        Text(
                          "Sort",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.lightBlue[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => const Item(),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

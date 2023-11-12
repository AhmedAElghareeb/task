import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_hotels/features/cubit.dart';
import 'item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> ratings = [
      "+0",
      "+7",
      "+7.5",
      "+8",
      "+8.5",
    ];

    List<Color> colors = [
      Colors.red,
      Colors.orangeAccent,
      Colors.lightGreen,
      Colors.lightGreenAccent,
      Colors.green,
    ];

    List<String> sortBy = [
      "Our recommendations",
      "Rating & Recommended",
      "Price & Recommended",
      "Distance & Recommended",
      "Rating only",
      "Price only",
      "Distance only",
    ];

    HotelsCubit cubit = BlocProvider.of(context)..getData();
    return Scaffold(
      body: BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          if (state is GetHotelsDataLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetHotelsDataFailed) {
            return Center(
              child: Text(state.msg),
            );
          } else {
            return SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(17.r),
                        bottomLeft: Radius.circular(17.r),
                      ),
                      color: Colors.white,
                    ),
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
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    20.r,
                                  ),
                                  topRight: Radius.circular(
                                    20.r,
                                  ),
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              builder: (context) => Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50.h,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                            blurStyle: BlurStyle.outer,
                                            blurRadius: 3.r,
                                            color: Colors.grey)
                                      ]),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 16.w,
                                            ),
                                            child: Text(
                                              "Reset",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 110.w,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Filters",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 110.w,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.w,
                                          ),
                                          child: Text(
                                            "PRICE PER NIGHT",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35.h,
                                          width: 70.w,
                                          margin: EdgeInsets.only(right: 10.w),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8.r,
                                            ),
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "540+ \$ ",
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Slider(
                                      value: 540,
                                      onChanged: (value) {},
                                      min: 20,
                                      max: 540,
                                      thumbColor: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$ 20+",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "\$ 540+",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "RATING",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                        ratings.length,
                                        (index) => Container(
                                          width: 40.w,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              5.r,
                                            ),
                                            color: colors[index],
                                          ),
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 11.w,
                                          ),
                                          child: Center(
                                            child: Text(
                                              ratings[index],
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "DISTANCE FROM",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                      ),
                                      child: const Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                        right: 16.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Location",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "City center > ",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.w,
                                      ),
                                      child: const Divider(
                                        thickness: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    FilledButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Show results",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
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
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    20.r,
                                  ),
                                  topRight: Radius.circular(
                                    20.r,
                                  ),
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                              builder: (context) => Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          blurStyle: BlurStyle.outer,
                                          blurRadius: 3.r,
                                          color: Colors.grey,
                                        )
                                      ]),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 150.w,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Sort by",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 120.w,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                              Icons.close,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ...List.generate(
                                      sortBy.length,
                                      (index) => Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 17.w,
                                          vertical: 13.h,
                                        ),
                                        child: Text(
                                          sortBy[index],
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
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
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Item(
                        data: cubit.hData!.data[index],
                      ),
                      itemCount: cubit.hData!.data.length,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

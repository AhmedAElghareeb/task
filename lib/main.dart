import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_hotels/features/cubit.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HotelsCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          360,
          690,
        ),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey[100],
            platform: TargetPlatform.iOS,
            filledButtonTheme: FilledButtonThemeData(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(
                    10.r,
                  ),
                ),
                minimumSize: Size(
                  250.w,
                  40.h,
                ),
              ),
            ),
          ),
          home: const HomeView(),
        ),
      ),
    );
  }
}

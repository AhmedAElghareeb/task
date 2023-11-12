import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_hotels/features/model.dart';

part 'states.dart';

class HotelsCubit extends Cubit<HotelsStates> {
  HotelsCubit() : super(HotelsStates());

  HotelsData? hData;

  Future<void> getData() async {
    emit(
      GetHotelsDataLoading(),
    );

    try {
      final response = await Dio().get(
        "https://www.hotelsgo.co/test/hotels",
      );
      print("____________${response.data}");
      print("____________${response.data.runtimeType}");
      hData = HotelsData.fromJson(response.data);
      print("____-----______");
      print("____-__---______${hData!.data.first.price}");
      print("____________$response");
      emit(
        GetHotelsDataSuccess(),
      );
    } on DioException catch (ex) {
      emit(
        GetHotelsDataFailed(
          msg: ex.toString(),
        ),
      );
    }
  }
}

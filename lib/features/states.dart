part of 'cubit.dart';

class HotelsStates {}

class GetHotelsDataLoading extends HotelsStates {}

class GetHotelsDataSuccess extends HotelsStates {}

class GetHotelsDataFailed extends HotelsStates {
  final String msg;

  GetHotelsDataFailed({required this.msg});
}

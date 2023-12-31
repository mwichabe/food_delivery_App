import 'package:equatable/equatable.dart';

import '../../models/userModel.dart';

abstract class SwipeEvent extends Equatable{
  const SwipeEvent();
  @override
  List<Object> get props => [];
}
class LoadUserEvent extends SwipeEvent{
  final List<User>users;

  const LoadUserEvent({required this.users});
  @override
  List<Object> get props => [users];

}
class SwipeRightEvent extends SwipeEvent{
  final User user;

  const SwipeRightEvent({required this.user});
  @override
  List<Object> get props => [user];

}
class SwipeLeftEvent extends SwipeEvent{
  final User user;

  const SwipeLeftEvent({required this.user});
  @override
  List<Object> get props => [user];

}
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationState extends Equatable {
  const AuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.user});

  final AuthenticationStatus status;
  final MyUser? user;

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(MyUser myUser)
      : this._(status: AuthenticationStatus.authenticated, user: myUser);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  List<Object?> get props => [status, user];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$usersModelAtom = Atom(name: 'HomeStoreBase.usersModel');

  @override
  UserModel? get usersModel {
    _$usersModelAtom.reportRead();
    return super.usersModel;
  }

  @override
  set usersModel(UserModel? value) {
    _$usersModelAtom.reportWrite(value, super.usersModel, () {
      super.usersModel = value;
    });
  }

  final _$getUserAsyncAction = AsyncAction('HomeStoreBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  @override
  String toString() {
    return '''
usersModel: ${usersModel}
    ''';
  }
}

import 'package:mobx/mobx.dart';

part 'listFriends_store.g.dart';

class ListFriendsStore = _ListFriendsStoreBase with _$ListFriendsStore;
abstract class _ListFriendsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}
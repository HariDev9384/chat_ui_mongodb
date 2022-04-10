import 'dart:developer';

import 'package:chat_ui_mongodb/constants/db_const.dart';
import 'package:mongo_dart/mongo_dart.dart';
class Database{
  static var db,user_collection;
  static connect() async{
    db= await Db.create(mongo_url);
    await db.open();
    inspect(db);
    user_collection=db.collection(uc);
  }
}
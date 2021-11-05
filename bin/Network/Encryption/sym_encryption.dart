import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';

import '../../Exception/encryption_exception.dart';

class SymEncryption{
  late final Key _key;
  String get key => _key.base64;
  final _iv = IV.fromLength(16);
  late final Encrypter _encrypt;

  SymEncryption([String key = '']){
    if(key == ''){ _key = Key.fromSecureRandom(32); }
    else{ _key = Key.fromBase64(key); }
    _encrypt = Encrypter(AES(_key));
  }

  String encrypt(String plainText) => _encrypt.encrypt(plainText, iv: _iv).base64;

  String decrypt(Uint8List encryptedMsg) {
   try{ return _encrypt.decrypt64(String.fromCharCodes(encryptedMsg), iv: _iv); }
   catch(e) { throw EncryptionException('(SymEncryption)decrypt:\n$e'); }
  }

  String decryptString(String mssg) => _encrypt.decrypt64(mssg, iv: _iv);
}
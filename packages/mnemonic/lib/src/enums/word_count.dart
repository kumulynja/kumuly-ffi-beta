import '../mnemonic_ffi.dart' as ffi;

enum WordCount {
  words12,
  words15,
  words18,
  words21,
  words24,
}

extension WordCountX on WordCount {
  int get asFfiWordCount {
    switch (this) {
      case WordCount.words12:
        return ffi.WordCount.Words12;
      case WordCount.words15:
        return ffi.WordCount.Words15;
      case WordCount.words18:
        return ffi.WordCount.Words18;
      case WordCount.words21:
        return ffi.WordCount.Words21;
      case WordCount.words24:
        return ffi.WordCount.Words24;
    }
  }
}

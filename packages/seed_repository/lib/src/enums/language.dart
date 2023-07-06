import '../seed_ffi.dart' as ffi;

enum Language {
  english,
  spanish,
}

extension LanguageX on Language {
  int get asFfiLanguage {
    switch (this) {
      case Language.english:
        return ffi.Language.English;
      case Language.spanish:
        return ffi.Language.Spanish;
    }
  }
}

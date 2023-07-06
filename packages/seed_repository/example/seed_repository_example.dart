import 'package:seed_repository/seed_repository.dart';

void main() {
  print('English 12 Words');
  final mnemonicEnglish12Words =
      Mnemonic(language: Language.english, wordCount: WordCount.words12);
  print('Mnemonic: ${mnemonicEnglish12Words.phrase}');
  print(
      'Lightning Seed: ${mnemonicEnglish12Words.deriveLightningSeed(Network.bitcoin)}');

  print('Spanish 24 Words');
  final mnemonicSpanish24Words =
      Mnemonic(language: Language.spanish, wordCount: WordCount.words24);
  print('Mnemonic: ${mnemonicSpanish24Words.phrase}');
  print(
      'Lightning Seed: ${mnemonicSpanish24Words.deriveLightningSeed(Network.bitcoin)}');

  const mnemonicPhrase =
      'admit unknown shrug lizard valve pair edit asset east festival palm sister';
  print('Recover from phrase: $mnemonicPhrase');
  print(
      'Lightning Seed: ${Mnemonic.fromPhrase(mnemonicPhrase).deriveLightningSeed(Network.bitcoin)}');
}

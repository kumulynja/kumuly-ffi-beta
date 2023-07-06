import '../seed_ffi.dart' as ffi;

enum Network {
  bitcoin,
  testnet,
  regtest,
  signet,
}

extension NetworkX on Network {
  int get asFfiNetwork {
    switch (this) {
      case Network.bitcoin:
        return ffi.Network.Bitcoin;
      case Network.testnet:
        return ffi.Network.Testnet;
      case Network.regtest:
        return ffi.Network.Regtest;
      case Network.signet:
        return ffi.Network.Signet;
    }
  }
}

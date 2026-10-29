void main() {
  try {
    int a = 5 ~/ 0;
    print(a);
  } on UnsupportedError {
    print("Operasi tidak didukung");
  }

  try {
    int pembilang = 5;
    int penyebut = 0;
    if (penyebut == 0) {
      throw UnsupportedError(
        "Result of truncating division is Infinity: $pembilang ~/ $penyebut",
      );
    }
    int a = pembilang ~/ penyebut;
    print(a);
  } catch (e) {
    print(e);
  }
}

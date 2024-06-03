import 'dart:io';

int fpb(int angka1, int angka2) {
  // Mendapatkan faktor dari angka1
  List<int> faktor1 = [];
  for (int i = 1; i <= angka1; i++) {
    if (angka1 % i == 0) {
      faktor1.add(i);
    }
  }

  // Mendapatkan faktor dari angka2
  List<int> faktor2 = [];
  for (int i = 1; i <= angka2; i++) {
    if (angka2 % i == 0) {
      faktor2.add(i);
    }
  }

  // Mendapatkan faktor bersama
  List<int> faktorBersama =
      faktor1.toSet().intersection(faktor2.toSet()).toList();

  // Mengembalikan faktor terbesar
  return faktorBersama.reduce((curr, next) => curr > next ? curr : next);
}

void main() {
  // Meminta input dari pengguna
  print("Masukkan bilangan 1 : ");
  int angka1 = int.parse(stdin.readLineSync()!);

  print("Masukkan bilangan 2 : ");
  int angka2 = int.parse(stdin.readLineSync()!);

  // Menghitung dan mencetak FPB
  int hasilFPB = fpb(angka1, angka2);
  print("FPB dari $angka1 dan $angka2 = $hasilFPB");
}

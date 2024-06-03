void main() {
  List<List<int>> listUtama = [];

  for (int i = 0; i < 4; i++) {
    List<int> subList = [];
    int count = 0;
    if (i == 0) {
      while (subList.length < 4) {
        count += 1;
        if (count % 6 == 0) {
          subList.add(count);
        }
      }
    } else if (i == 1) {
      while (subList.length < 5) {
        count += 1;
        if (count % 2 != 0 && count != 1) {
          subList.add(count);
        }
      }
    } else if (i == 2) {
      while (subList.length < 6) {
        count += 1;
        if (count >= 4) {
          subList.add(count * count * count);
        }
      }
    } else if (i == 3) {
      while (subList.length < 7) {
        if (subList.isEmpty) {
          subList.add(3);
        } else {
          subList.add(subList.last + 7);
        }
        count += 1;
      }
    }

    listUtama.add(subList);
  }

  for (var elemen in listUtama) {
    print(elemen.join(' '));
  }
}

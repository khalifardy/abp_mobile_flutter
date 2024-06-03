
def fpb(angka1,angka2):
    faktor_1 = [i for i in range(1,angka1+1) if angka1 % i == 0]
    faktor_2 = [i for i in range(1,angka2+1) if angka2 % i == 0]
    faktor_bersama = list(set(faktor_1) & set(faktor_2))
    return max(faktor_bersama)


angka_1 = int(input("Masukkan bilangan 1 : "))
angka_2 = int(input("Masukkan bilangan 2 : "))

print(f"FPB dari {angka_1} dan {angka_2} = {fpb(angka_1,angka_2)}")
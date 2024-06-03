list_utama = []
for i in range(4):
    sub_list = []
    count = 0
    if i == 0:
        while len(sub_list) < 4:
            count += 1
            if count % 6 == 0 :
                sub_list.append(count)
    elif i == 1:
        while len(sub_list)<5:
            count += 1
            if count %2 != 0 and count != 1:
                sub_list.append(count)
    elif i ==2 :
        while len(sub_list)<6:
            count += 1
            if count >= 4:
                sub_list.append(count**3)
    
    elif i == 3:
        while len(sub_list)<7:
            if len(sub_list)==0:
                sub_list.append(3)
            else:
                sub_list.append(sub_list[count-1]+7)
            count += 1
    
    list_utama.append(sub_list)

for elemen in list_utama:
    for el in elemen:
        print(el, end = " ")
    print(" ")
            
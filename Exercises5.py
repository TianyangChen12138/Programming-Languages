# reverses a list of integers
def reverse(list):
    list1 = []
    def reverse1(list2):
        if len(list2) == 0:
            return
        else:
            j = 0
            i = 0
            for i in list2:
                j = j + 1
            list1.append(list2[j-1])
            return reverse1(list2[:-1])
    reverse1(list)
    return list1

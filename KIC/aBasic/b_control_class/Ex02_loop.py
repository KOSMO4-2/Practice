
# ------------------------------------------------------
"""
   (2) for문
        for <타켓변수> in 집합객체 :
            문장들
        else:
            문장들

        ` 반복문 뒤에 else는 반복하는 조건에 만족하지않으면 실행

   (3) while 문
        while 조건문 :
            문장들
        else :
            문장들

"""
a = 112                  # 숫자형
b = ['1','2','3']       # 리스트
c = '987'                # 문자열
d = tuple(b)             # 튜플
e = dict(k=5, j=6)       # 딕셔너리

for entry in e.items(): # a는 반복이 안되지만 b부터 e까지는 반복된다.
    print(entry[0],entry[1])

for key, val in e.items():
    print('key=',key,'value=',val)


sum =0
for i in range(1,11,2):
      sum = sum+i
print(sum)

#------------------------------------
# while
a= ['x','y','z']
while a:    # 집합요소에 빈 요소인 경우에만 False, 요소 하나라도 있으면 True
    data = a.pop()
    print(data)
    if data == "y" : break

else:
    print(a)
    print('end')



"""
[과제] 2단부터 9단까지 이중 반복문으로 출력

for i in range(1,10):
    for j in range(1,10):
        print(j," * ",i," = ", i*j,end="\t\t")
    print("")
"""

result = 0
for i in range(5, -5, -2):
    if i < -3:
        result += 1
    else:
        result -= 1
print(result)
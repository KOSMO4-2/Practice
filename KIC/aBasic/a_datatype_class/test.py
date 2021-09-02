# [문항1] 홍길동씨의 주민등록번호는 880122-1234567 이다.
#   주민번호에서 생년월일만 birthday 변수에 저장하고 성별을 구하는 숫자를 gender 변수에 저장한 후
#   출력한다




"""1번
pin = '880122-1234567'
birthday = "홍길동님 생년월일:"+ pin.split("-")[0]
gender = "성별:"+ "남자" if (pin.split("-")[1][0]=="1") else "여자"
print(birthday)
print(gender)

"""


""" 2번
a = [1,3,5,4,2]
a = sorted(a)
a = a[::-1]
print(a)
"""


"""3번
a = ["독도는","대한민국의","아름다운","섬입니다"]
result = " ".join(a)
print(result)
"""



"""4번
a = (1,2,3)
a += (4,)
print(a)

"""

"""5번
a=b=[1,2,3] 이라는 구문은 a와 b가 [1,2,3]을 가리키는 것이고
a와 b는 같은 객체의 장소를 가리키게된다.
따라서 [1,2,3]이라는 객체를 변경하면 이를 가리키고있는 a와b 둘 다
변경되는 것이다.

a = b = [1,2,3]
a[1]=4
print(b)
"""


""" 6번
for i in range(0,5):
    for k in range(0,i):
        print("*",end="")
    print("*")

"""

"""7번
kor_score = [77,88,76,44,56]
math_score = [96,99,100,55,66]
eng_score = [50,60,70,80,90]
midterm_score = [kor_score,math_score,eng_score]

sum = []
i=0
print("학생 ", "\t|\t국어 \t|\t수학 \t|\t영어 \t|\t총점 \t|\t평균 \t|")
for m in midterm_score:
    total = m[0]+m[1]+m[2]
    avg = round(total/3.0,2)
    print("학생 ",i+1,"\t|\t",m[0],"\t|\t",m[1],"\t|\t",m[2],"\t|\t",total,"\t|\t",avg,"\t|")
    i = i+1



"""



"""8번

lifes = dict(dict());

life = {"animal":[{"cats":[{"Kim":None},{"Lee":None},{"Choi":None}]},{"octopi":None},{"emus":None}],"plants":None,"other":None}

print(life.get("animal")[0].get("cats")[0].get("Lee"))

"""


"""
1번. 답 : [3,1,7,5]

2번. 답 : (가) 스택 (나) 큐 (다) 튜플 (라) 세트

3번. 답 :  False (실수형과 문자열은 다르다)

4번. 답 : 1번

5번. 답 : 1번

6번. 답 : 4

7번. 답 : 3

8번. 10

9번. [0,1,2,3,4,5,6,7,8,9]
"""


"""
10번
(1,)
[1]
error

error
a
a
"""





"""
 [ 제어문 ]
    - 파이썬은 들여쓰기를 하여 블록{}을 대신 표현한다
    - 들여쓰기는 탭과 공백을 섞어 쓰지 말자

    [ex]
    if a>b:
        print(a)
            print(b)  => 에러발생

    (1) if 문
        if 조건식A :
            문장들
        elif 조건식B :
            문장들
        else :
            문장들

        ` 조건식이나 else 뒤에는 콜론(:) 표시
        ` 조건식을 ( ) 괄호 필요없다
        ` 실행할 코드가 없으면 pass
        ` 파이썬은 switch 문 없음
"""

# 거짓(False)의 값
i = 0;
i2=0.0
i3=""
i4=str()
i5=list()
i6=tuple()
i7=set()
i8=dict()
i9={}
i10=None

a = -1
if a :
    print("True1")   ###
else :
    print("False1")

a=10
b=-1

print(a and b)
print(a or b)

if a and b:
    print("True2")
else :
    print("False2")

if a or b:
    print("True3")
else :
    print("False3")

a=0
if a :
    c=2
elif b:
    c=4
else:
    c=6

print(c)

#--------------------------------------------------------
word = 'korea'

# 실수 많은 부분, 0일때 false를 뱉고 다른 값일때 true를 뱉는다. 0번째 인덱스에 k가 있으므로
# 0을 뱉고 false가 되어버렸다.
if word.find('k') > -1:
    print('1>' + word)

if word.find('z') > -1:
    print('2>' + word)






"""
    [ 함수 ]

     - 반복적인 구문을 만들어 함수로 선언하여 간단하게 호출만 하고자 한다
     - 역할별 구문을 작성한다

     def 함수명(매개변수):
        수행할 문장들
"""

# (0) 인자도 없고 리턴값도 없는 함수
def func():
    print("inside func")

# (1) 리턴값이 여러 개인 함수
def func2(arg):
    return arg*2, arg+10

a,b = func2(13)
print(a)

# (2) 위치인자 (positional argument)
def func3(greeting, name):
    print(greeting,"!!!!",name,"님")

func3("안녕","홍길동")
func3("김길동","헬로우")

# (3) 키워드 인자 (Keyword Argument)
def func4(greeting, name):
    print(greeting,"!!!!",name,"님")

func4("안녕","홍길동")
func4(name="김길동",greeting="헬로우")

# (4) 인자(매개변수)의 기본값 지정하기
def func5(greeting, name="아무개"):
    print(greeting, "!!!!", name + "님")

func5("안녕")
func5("하이","스미스")


def func6(a, b, c=100):
    return a*2 + b*3 + c*4
print(func6(1,2,))
print(func6(1,2,3))
print(func6(c=1,b=2,a=3))




'''
#----------------------------------------------------------------
# (5) 위치 인자 모으기 (*)

첫번째와 두번째는 인자가 반드시 들어가고 세번째는 인자가 들어갈 수도 있고 없으면 0으로 초기화한다
그러나 네번째 인자부터는 정확히 모른다면?

print(func(4, 5))
print(func(4, 5, 6))
print(func(4, 5, 6, 7))
print(func(4, 5, 6, 7, 8, 9))       # args에 7,8,9가 튜플로 들어간다
'''


def func7(a,b,c=0,*args):
    sum = a+b+c
    print(args)
    return sum

print(func7(4, 5))
print(func7(4, 5, 6))
print(func7(4, 5, 6, 7))
print(func7(4, 5, 6, 7, 8, 9))

#----------------------------------
# (6) 키워드 인자 모으기 ( ** )
"""
    *args       :   positional argument 만 받을때
    **kwargs    :   keyword argument 받을 때

"""
def even_filter(lists):
    list = [n for n in lists if n%2==0]
    return list
print(even_filter([1, 2, 4, 5, 8, 9, 10]))

def is_prime_number(n):
    for i in range(2,n):
        if n%i==0 :
            return False
    return True;
print(is_prime_number(60))
print(is_prime_number(61))

def count_vowel(s):
    cnt =0
    for i in s:
        if i in ["a","e","i","o","u"]:
            cnt = cnt+1
    return cnt
print(count_vowel("pythonian"))
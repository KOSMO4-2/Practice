msg = '행복해'            # 문자열
li = ['a','b','c']       # 리스트
tpl = ('ㄱ','ㄴ','ㄷ')    # 튜플
di = {'k': 5, 'j': 6, 'l':7 }    # 딕셔너리

# (1) unpacking : 각 요소를 분해
a = []
a = di.values()
print(a)


# (2) 리스트의 요소로 튜플인 경우의 예
alist = [(1,2),(3,4),(5,6)]
for a in alist:
    print(a[0]+a[1])


# (3) enumerate() : 인덱스와 같이 추출하고자 할때
"""
    자바에 Iterator 의 예전 버전 Enumerator
"""
user_list = ['개발자', '코더', '전문가', '분석가']
for user in enumerate(user_list):
    print(user)


# (4) zim() : *********
days = ['월','화','수','목']
doit = ['잠자기','공부','놀기', '밥먹기']

print(dict(zip(days,doit)))



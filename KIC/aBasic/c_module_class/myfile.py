# myfile.py

# (1) 모듈 전체를 참조할 때
"""
import mymodule     # mymodule.py
print(mymodule.get_weather())
print(mymodule.get_date())
"""

# (2) 별칭 부여
# 별칭을 지정하면 본체를 지칭해도 에러남
"""
import mymodule as my
print(my.get_weather())
print(my.get_date())
"""

# (3) 모듈에서 필요한 부분만 임포트하기
from c_module_class.mypackage.exam.mymodule import get_weather as my
print(my())
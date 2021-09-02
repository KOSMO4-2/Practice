import requests
from bs4 import BeautifulSoup
import time
import urllib.request
from selenium.webdriver import Chrome
import re
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
import datetime as dt
import pandas as pd

from konlpy.tag import Okt

#한글 댓글에 대한 단어 처리
okt = Okt()
def comment_croll(linked):
    youtube_pd2 = []
    for link in linked:
        path = "C:/tool/chromedriver.exe"
        delay = 3
        driver= Chrome(path)
        driver.implicitly_wait(delay)
        # URL & 스크롤 위치 초기화
        driver.get(link)
        driver.implicitly_wait(3)
        time.sleep(1.5)
        driver.execute_script("window.scrollTo(0, 800)")
        time.sleep(3)


        # 댓글 페이지 추가 노출 코드
        last_height = driver.execute_script("return document.documentElement.scrollHeight")

        while True:
            driver.execute_script("window.scrollTo(0, document.documentElement.scrollHeight);")
            time.sleep(1.5)

            new_height = driver.execute_script("return document.documentElement.scrollHeight")
            if new_height == last_height:
                break
            last_height = new_height

        time.sleep(1.5)


        # 팝업창 제거
        try:
            driver.find_element_by_css_selector("#dismiss-button > a").click()
        except:
            pass


        # 댓글 크롤링
        html_source = driver.page_source
        soup = BeautifulSoup(html_source, 'html.parser')

        id_list = soup.select("div#header-author > h3 > #author-text > span")
        comment_list = soup.select("yt-formatted-string#content-text")

        id_final = []
        comment_final = []

        for i in range(len(comment_list)):
            temp_id = id_list[i].text
            temp_id = temp_id.replace('\n', '')
            temp_id = temp_id.replace('\t', '')
            temp_id = temp_id.replace('    ', '')
            id_final.append(temp_id)

            temp_comment = comment_list[i].text
            temp_comment = temp_comment.replace('\n', '')
            temp_comment = temp_comment.replace('\t', '')
            temp_comment = temp_comment.replace('    ', '')
            comment_final.append(temp_comment)


        # 데이터 정제
        keyword_list = []
        word = ""
        for i in range(len(comment_list)):
            words = okt.nouns(comment_final[i])
            word += " ".join(words)
            word += " "



        # 정제된 데이터 빈도수 분석
        wordList = word.split()
        wordLists = []
        wordCount = {} 
        wordCounts = []
         # word -> count 기준 정렬한 dictionary
        for word in wordList:
            # Get 명령어를 통해, Dictionary에 Key가 없으면 0리턴
            wordCount[word] = wordCount.get(word, 0) + 1 

        keys = sorted(wordCount.items(),key=(lambda x:x[1]),reverse=True)

        for word in keys:
            wordLists.append(word[0])  
            wordCounts.append(word[1])


        pd2_data = {"키워드" : wordLists, "빈도수" : wordCounts}
        
        youtube_pd2.append(pd.DataFrame(pd2_data))
        driver.close()
    return youtube_pd2
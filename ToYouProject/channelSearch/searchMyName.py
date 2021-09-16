import requests
from bs4 import BeautifulSoup
import time
import urllib.request
from selenium.webdriver import Chrome
from selenium import webdriver
import re
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys

def quick_search_channel_list(key_word):
    path = "./Channel_search/chromedriver.exe"
    options = webdriver.ChromeOptions()
    #options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    delay = 1
    driver = Chrome(path,options=options)
    driver.implicitly_wait(1)
    search = "https://www.youtube.com/results?search_query="+key_word
    driver.get(search)
    
    driver.find_element_by_xpath('/html/body/ytd-app/div/ytd-page-manager/ytd-search/div[1]/ytd-two-column-search-results-renderer/div/ytd-section-list-renderer/div[1]/div[2]/ytd-search-sub-menu-renderer/div[1]/div/ytd-toggle-button-renderer/a/tp-yt-paper-button/yt-formatted-string').click()
    driver.find_element_by_xpath('/html/body/ytd-app/div/ytd-page-manager/ytd-search/div[1]/ytd-two-column-search-results-renderer/div/ytd-section-list-renderer/div[1]/div[2]/ytd-search-sub-menu-renderer/div[1]/iron-collapse/div/ytd-search-filter-group-renderer[2]/ytd-search-filter-renderer[2]/a/div/yt-formatted-string').click()
    time.sleep(1)
    lists = []
    try :
        for i in range(1,6):
            if 1==1:
                ch= driver.find_element_by_xpath('/html/body/ytd-app/div/ytd-page-manager/ytd-search/div[1]/ytd-two-column-search-results-renderer/div/ytd-section-list-renderer/div[2]/ytd-item-section-renderer/div[3]/ytd-channel-renderer['+str(i)+']')
                # 채널 이름
                ch_title = ch.find_element_by_xpath('div/div[2]/a/div[1]/ytd-channel-name/div/div/yt-formatted-string').text

                # 채널 동영상 개수
                try:
                    ch_movie = ch.find_element_by_xpath('div/div[2]/a/div[1]/div/span[3]').text
                    ch_movie = ch_movie.replace("동영상 ","").replace("개","").replace(",","").replace(" ","")
                    ch_movie = int(ch_movie)
                except:
                    ch_movie = 0


                # 채널 구독자 수
                try:
                    ch_sub = ch.find_element_by_xpath('div/div[2]/a/div[1]/div/span[1]').text
                    ch_sub = ch_sub.replace("구독자 ","").replace("명","")
                    if ch_sub.endswith("만"):
                        ch_sub = ch_sub.replace("만","")
                        ch_sub = float(ch_sub)*10000
                        ch_sub = int(ch_sub)
                    elif ch_sub.endswith("천"):
                        ch_sub = ch_sub.replace("천","")
                        ch_sub = float(ch_sub)*1000
                        ch_sub = int(ch_sub)
                    elif ch_sub.endswith("억"):
                        ch_sub = ch_sub.replace("억","")
                        ch_sub = float(ch_sub)*100000000
                        ch_sub = int(ch_sub)
                    else:
                        ch_sub = int(ch_sub)
                except:
                    ch_sub = 0


                # 채널 링크
                ch_link = ch.find_element_by_xpath('div/div[2]/a').get_attribute('href')
                ch_image = ch.find_element_by_xpath('div/div[1]/a/div/yt-img-shadow/img').get_attribute('src')
                

                lists.append([ch_title,ch_movie,ch_sub,ch_link,ch_image])
                print(ch_image)
                print([ch_title,ch_movie,ch_sub,ch_link,ch_image])
                print("="*50)
    except:
        pass
    driver.close()
    return lists
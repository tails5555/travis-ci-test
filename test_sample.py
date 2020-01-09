import requests
from app import hello_world, home_page

# 문자열 출력 테스트 (1)
def test_hello_world() :
    assert 'Hello, Flask!' == hello_world()

# 문자열 출력 테스트 (2)
def test_home() :
    assert 'Home!' == home_page()
    
# HTTP Request 테스트 (1)
def test_request_hello_world() :
    assert 'Hello, Flask!' == requests.get('http://127.0.0.1:5000').text

# HTTP Request 테스트 (2)
def test_request_home() :
    assert 'Home!' == requests.get('http://127.0.0.1:5000/home').text
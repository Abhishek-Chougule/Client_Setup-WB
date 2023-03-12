# Copyright (c) 2023, Abhishek Chougule and contributors
# Contact developer.mrabhi@gmail.com for more.
# For license information, please see license.txt

import serial
import requests
import time
import random

api_endpoint = 'http://swtechnotest.erpdata.in/api/resource/Weight Reading/1?module=weight_cal&app=weight_cal'
api_token = '056373257488193:08f183af024213c'
value=19
while True:
    value=random.randint(10,90)
    data = {'wm1': value,'doctype': 'weightcal','module': 'weight_cal'}
    headers = {'Authorization': f'Token {api_token}'}
    response = requests.put(api_endpoint, data=data, headers=headers)
    time.sleep(1)

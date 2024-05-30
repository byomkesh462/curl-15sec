import requests
import time

# Replace the following URL with the one you want to curl
url = "https://premiumfilterpvt.onrender.com"

while True:
    try:
        response = requests.get(url)
        print(f"Status Code: {response.status_code}")
        print(f"Response Body: {response.text}")
    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")
    
    # Wait for 20 seconds
    time.sleep(20)

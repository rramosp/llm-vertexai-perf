from locust import HttpUser, task, between
import os
from loguru import logger
import json
import numpy as np

ENDPOINT     = os.environ['ENDPOINT']
BEARER_TOKEN = os.popen('gcloud auth print-access-token').read().strip()

print ('using endpoint', ENDPOINT)


with open('questions.json') as f:
    questions = json.load(f)['questions']


class DeepSeekUser(HttpUser):
    wait_time = between(0,1)

    @task
    def call_endpoint(self):

        with open('instance.json') as f:
            instance = json.load(f) 

        instance['prompt'] = np.random.choice(questions)
        print(instance['prompt'])
        
        headers = { "Content-Type": "application/json", 
                    "Authorization": f"Bearer {BEARER_TOKEN}"}

        r = self.client.post(ENDPOINT,
                             data=json.dumps(instance),
                             headers=headers, timeout=1000)
        #print(r, dir(r), r.status_code, r.reason, r.content)
       





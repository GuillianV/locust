from locust import HttpUser, task, between
class UserBehavior(HttpUser): 
    wait_time = between(1, 3)
    @task
    def search(self):
        self.client.get("/pokemon/ditto")

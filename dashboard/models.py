import random

from django.db import models
from django.contrib.auth.models import User


def random_ecard():
    return str(random.randint(1111111111111111,  9999999999999999))

def random_cvv():
    return str(random.randint(111,999))



class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    firstname = models.CharField(max_length=50)
    lastname = models.CharField(max_length=50)
    username = models.CharField(max_length=50)
    email = models.EmailField()
    phone = models.CharField(max_length=10)
    profile_pic = models.FileField(upload_to='static/uploads/profile', default='static/images/profile.gif')
    ecard_no = models.CharField(max_length=16, default=random_ecard)
    ecard_cvv = models.CharField(max_length=3, default=random_cvv)
    created_date = models.DateTimeField(auto_now_add=True)
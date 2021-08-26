from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from . import models

class SignupForm(UserCreationForm):
    class Meta:
        model =User
        fields = ('first_name','last_name','username','password1','password2')

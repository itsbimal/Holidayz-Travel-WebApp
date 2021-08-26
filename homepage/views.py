from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User, auth
from django.contrib.auth import authenticate, logout
from . import forms, models
from .forms import SignupForm
from django.http import HttpResponse
from django.contrib import messages
from admins.models import Country, Offer, Place

def index_page(request):
    return render(request, 'homepage/index.html')

# Accounts
def login(request):
    if request.method == 'POST':
        uname = request.POST['username']
        passwd = request.POST['password']

        user = auth.authenticate(username=uname, password=passwd)

        if user is not None:
            auth.login(request, user)
            return redirect("/dashboard")
        else:
            messages.info(request, "Invalid Login details! Unable to login")
            return render(request, 'homepage/login.html')

    else:
        return render(request, 'homepage/login.html')


def register(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, "User has been created successfully!")
            return redirect('/login')
        else:
            messages.add_message(request, messages.ERROR, "Failed to create an account, Check carefully and Try Again!")
            return render(request, 'homepage/register.html', {'form': form})

    form = SignupForm
    context = {
        'form': form
    }
    return render(request, 'homepage/register.html', context)


def country_list(request):
    data = Country.objects.all().order_by('-id')
    context = {
        'data': data
    }
    return render(request, 'dashboard/country.html', context)

def pricing_page(request):
    return render(request, 'dashboard/pricing.html')


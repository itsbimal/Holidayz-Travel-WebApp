from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth import logout
from admins.models import Country, Place
from dashboard.models import Profile
from homepage.auth import user_only


@login_required
def index_page(request):
    return render(request, 'dashboard/index.html')

@login_required
def logout_view(request):
    logout(request)
    return redirect('/')

@login_required
def ecard(request):
    return render(request, 'dashboard/ecard.html')

def country_list(request):
    data = Country.objects.all().order_by('-id')
    context = {
        'data': data,
        'active_ecard': 'active'
    }
    return render(request, 'dashboard/country.html', context)

@login_required
def profile(request):
    return render(request, 'dashboard/profile.html')

# @login_required
def places(request):
    place = Place.objects.all().order_by('-id')
    context = {
        'places' : place,
        'activate_place' : 'active'
    }
    return render(request, 'dashboard/places.html', context)

def place_details(request):
    place = Place.objects.all().order_by('-id')
    context = {
        'dplace' : place,
        'activate_place' : 'active'
    }
    return render(request, 'dashboard/details.html', context)

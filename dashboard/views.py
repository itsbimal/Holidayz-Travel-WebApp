from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.shortcuts import render, redirect
from django.contrib.auth import logout
from admins.models import Country, Place
from dashboard.models import Profile, Watchlist
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
def show_places(request):
    place = Place.objects.all().order_by('-id')
    context = {
        'places': place,
        'activate_place': 'active'
    }
    return render(request, 'dashboard/places.html', context)


def place_details(request, name):
    place = Place.objects.get(dest_name=name)
    context = {
        'details': place,
        'activate_place': 'active'
    }
    return render(request, 'dashboard/details.html', context)


def destination_list(request, c_id):
    dests = Place.objects.all().filter(country_id=c_id)
    print(dests)
    context = {
        'place': dests
    }
    return render(request, 'dashboard/places.html', context)

def watchlist(request):
    user = request.user
    place_id = request.GET.get('place_id')
    places = Place.objects.get(id=place_id)
    Watchlist(user=user, place=places).save()
    return redirect('/')

def show_watchlist(request):
    watchlist_count = Watchlist.objects.all().count()

    if request.user.is_authenticated:
        user = request.user
        watchlists = Watchlist.objects.filter(user=user)
        return render(request, 'dashboard/watchlist.html',{'watchlist':watchlists, 'count_watchlist': watchlist_count})




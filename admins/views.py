from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect
from dashboard.models import Booking
from .forms import AddCountry
from .models import Country, Place
from django.contrib.auth.models import User
from homepage.auth import admin_only, user_only
from dashboard.models import *
from homepage.models import *


def admin_dashboard(request):
    booking = Booking.objects.all()
    booking_count = booking.count()

    country = Country.objects.all()
    country_count = country.count()

    place = Place.objects.all()
    place_count = place.count()

    users = User.objects.all()
    card_count = users.count()

    user_count = users.filter(is_staff=0).count()
    admin_count = users.filter(is_staff=1 ).count()

    user_info = users.filter(is_staff=0)
    admin_info = users.filter(is_staff=1)

    context = {
        'booking': booking_count,
        'country': country_count,
        'place': place_count,
        'card': card_count,
        'user': user_count,
        'admin': admin_count,
        'user_info': user_info,
        'admin_info': admin_info,
        'activate_adminhome': 'active bg-primary'
    }
    return render(request, 'admins/admins_home.html', context)


def add_country(request):
    data = Country.objects.all().order_by('-id')
    if request.method == 'POST':
        form = AddCountry(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS,
                                 "Congratulations! New country is added successfully in your list")
            return redirect('/admins/addcountry')
    context = {
        'form': AddCountry,
        'country_data': data,
        'activate_country': 'active bg-primary'
    }

    return render(request, 'admins/add_country.html', context)


def delete_country(request, country_id):
    country = Country.objects.get(id=country_id)
    country.delete()
    messages.add_message(request, messages.SUCCESS, 'Country is deleted successfully')
    return redirect('/dashboard/booking')


def add_place(request):
    countries = Country.objects.all()
    context = {
        'countries': countries,
        'activate_place': 'active bg-primary'
    }
    if request.method == 'POST':
        # data = request.POST
        country = request.POST.get('country_asp')
        dest_name = request.POST.get('asp_name')
        dest_price = request.POST.get('asp_price')
        dest_type = request.POST.get('asp_type')
        dest_desc = request.POST.get('asp_desc')
        dest_location = request.POST.get('asp_location')
        dest_image = request.FILES.get('asp_image')
        day_one = request.POST.get('day_one')
        day_two = request.POST.get('day_two')
        day_three = request.POST.get('day_three')
        place = Place(country_id=country,
                      dest_name=dest_name,
                      dest_price=dest_price,
                      dest_type=dest_type,
                      dest_desc=dest_desc,
                      dest_location=dest_location,
                      dest_image=dest_image,
                      day_one=day_one,
                      day_two=day_two,
                      day_three=day_three
                      )
        place.save()

        if place:
            return redirect('/admins/showplace')
        else:
            return HttpResponse('Unsuccessful')

    return render(request, 'admins/add_place.html', context)

def show_place(request):
    data = Place.objects.all().order_by('-id')
    context = {
        'all_place': data,
        'activate_place': 'active bg-primary'
    }

    return render(request, 'admins/show_place.html', context)


# Showing users and admins
def get_users(request):
    users = User.objects.filter(is_staff=0).order_by('-id')
    context = {
        'users': users,
        'activate_user': 'active bg-primary'
    }
    return render(request, 'admins/show_users.html', context)


# Showing all admins
def get_admins(request):
    admins = User.objects.filter(is_staff=1).order_by('-id')
    context = {
        'admins': admins,
        'activate_admins': 'active bg-primary'
    }
    return render(request, 'admins/show_admins.html', context)


# Promote Users
def promote_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'Travellers promoted to Site Admin!')
    return redirect('/admins/showadmins')


# Promote Users
def demote_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = False
    user.save()
    messages.add_message(request, messages.SUCCESS, 'Next admin demoted to travellers!')
    return redirect('/admins/showusers')


def deactivate_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_active = False
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User Account Deactivated!')
    return redirect('/admins/showusers')


def deactivate_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_active = False
    user.save()
    messages.add_message(request, messages.SUCCESS, 'Admin Account Deactivated!')
    return redirect('/admins/showadmins')

def reactive_user(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_active = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User Account is reactivated!')
    return redirect('/admins/showusers')


def reactive_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_active = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'Admin Account is reactivated!')
    return redirect('/admins/showadmins')

def booking_date(request):
    booked_data = Booking.objects.all()
    context = {
        'booking': booked_data,
        'activate_booking': 'active bg-primary'
    }
    return render(request,'admins/bookingdata.html', context)

def issued_id(request):
    id_card = User.objects.all()
    context = {
        'idcard': id_card,
        'activate_card': 'active bg-primary'
    }
    return render(request,'admins/issuedid.html', context)


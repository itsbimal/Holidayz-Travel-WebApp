from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.contrib.auth import logout
from admins.models import Country, Place, Offer
from dashboard.models import Profile, Watchlist, Booking, Booking_Draft
from homepage.auth import user_only


@login_required
def index_page(request):
    context = {
        'activate_home': 'active border-bottom active-class'
    }
    return render(request, 'dashboard/index.html', context)


@login_required
def logout_view(request):
    logout(request)
    return redirect('/')


@login_required
def ecard(request):
    context = {
        'activate_ecard': 'active border-bottom active-class'
    }
    return render(request, 'dashboard/ecard.html', context)


def country_list(request):
    data = Country.objects.all().order_by('-id')
    context = {
        'data': data,
        'activate_explore': 'active border-bottom active-class'
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
        'activate_place': 'active border-bottom active-class'
    }
    return render(request, 'dashboard/showplaces.html', context)


def place_details(request, name):
    place = Place.objects.get(dest_name=name)
    context = {
        'details': place,
        'activate_place': 'active'
    }
    return render(request, 'dashboard/details.html', context)


def destination_list(request, c_id):
    dests = Country.objects.get(id=c_id)
    print(dests)
    context = {
        'country': dests
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
        return render(request, 'dashboard/watchlist.html',
                      {'watchlist': watchlists, 'count_watchlist': watchlist_count,
                       'activate_watchlist': 'active border-bottom active-class'})


def add_booking(request):
    user = request.user
    place_id = request.GET.get('place_id')
    places = Place.objects.get(id=place_id)
    Booking_Draft(user=user, place=places).save()
    return redirect('')


def delete_booking(request, booking_id):
    booking = Booking_Draft.objects.get(id=booking_id)
    booking.delete()
    messages.add_message(request, messages.SUCCESS, 'Booking is deleted successfully')
    return HttpResponseRedirect("")

def areyou_sure(request):
    return render(request,'dashboard/sure.html')


def booking(request, place_id):
    user = request.user
    place = Place.objects.get(id=place_id)
    booking_place = Booking_Draft.objects.filter(user=user)
    place_info = Place.objects.filter(id=place_id)
    offers = Offer.objects.all()

    if request.method == 'POST':
        total_person = request.POST.get('bookin_totalperson')
        booked_date = request.POST.get('bookin_date')
        place_price = place.dest_price
        offer = request.POST.get('bookin_offers')
        total_price = int(total_person) * int(place_price)
        print(total_price)

        bookings = Booking.objects.create(place=place,
                                          user=user,
                                          offer_id=offer,
                                          total_person=total_person,
                                          total_price=total_price,
                                          booked_date=booked_date,
                                          status="In-Review"
                                          )
        if bookings:
            return redirect('/dashboard/summary')


    context = {
        'placed': booking_place,
        'offers': offers,
        'infos': place_info
    }
    return render(request, 'dashboard/booking.html', context)


def booking_summary(request):
    user = request.user
    booking_details = Booking.objects.filter(user=user).order_by('-id')
    context = {
        'bookings': booking_details,
        'activate_booking': 'active border-bottom active-class'
    }

    return render(request, 'dashboard/summary.html', context)

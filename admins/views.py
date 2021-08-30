from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render, redirect
from .forms import AddCountry
from .models import Country, Place
from homepage.auth import admin_only, user_only


@user_only
def admin_dashboard(request):
    return render(request, 'admins/admins.html')


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
        'activate_addcountry': 'active'
    }

    return render(request, 'admins/add_country.html', context)


def delete_country(request, country_id):
    country = Country.objects.get(id=country_id)
    country.delete()
    messages.add_message(request, messages.SUCCESS, 'Country is deleted successfully')
    return redirect('/admins/addcountry')


def add_place(request):
    countries = Country.objects.all()
    context = {
        'countries': countries
    }
    if request.method == 'POST':
        # data = request.POST
        country = request.POST.get('country_asp')
        dest_name = request.POST.get('asp_name')
        dest_type = request.POST.get('asp_type')
        dest_desc = request.POST.get('asp_desc')
        dest_location = request.POST.get('asp_location')
        dest_image = request.FILES.get('asp_image')
        day_one = request.POST.get('day_one')
        day_two = request.POST.get('day_two')
        day_three = request.POST.get('day_three')
        place = Place(country_id=country,
                      dest_name=dest_name,
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
            return HttpResponse("Successful")
        else:
            return HttpResponse('Unsuccessful')

    return render(request, 'admins/add_place.html', context)


def show_place(request):
    data = Place.objects.all().order_by('-id')
    context = {
        'all_place': data
    }

    return render(request, 'admins/show_place.html', context)

# Add country according to catogory

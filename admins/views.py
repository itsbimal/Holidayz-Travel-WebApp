from django.contrib import messages
from django.shortcuts import render, redirect
from .forms import AddCountry
from .models import Country
from homepage.auth import admin_only


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
    return render(request, 'admins/add_place.html')

#Add country according to catogory




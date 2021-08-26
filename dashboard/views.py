from django.http import HttpResponse
from django.shortcuts import render, redirect
from .forms import AddCountry
from .models import Country
from django.contrib import messages


def user_dashboard(request):
    return render(request, 'dashboard/dashboard.html')


def add_country(request):
    data = Country.objects.all().order_by('-id')
    if request.method == 'POST':
        form = AddCountry(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS,
                                 "Congratulations! New country is added successfully in your list")
            return redirect('/dashboard/addcountry')
    context = {
        'form': AddCountry,
        'country_data': data
    }

    return render(request, 'dashboard/add_country.html', context)


def delete_country(request, country_id):
    country = Country.objects.get(id=country_id)
    country.delete()
    messages.add_message(request, messages.SUCCESS, 'Country is deleted successfully')
    return redirect('/dashboard/addcountry')

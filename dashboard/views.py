from django.shortcuts import render, redirect
from django.contrib.auth import logout
from admins.models import Country


def index_page(request):
    return render(request, 'dashboard/index.html')


def logout_view(request):
    logout(request)
    return redirect('/')


def ecard(request):
    return render(request, 'dashboard/ecard.html')

def country_list(request):
    data = Country.objects.all().order_by('-id')
    context = {
        'data': data
    }
    return render(request, 'dashboard/country.html', context)


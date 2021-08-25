from django.http import HttpResponse
from django.shortcuts import render, redirect
from .forms import AddCountry


def user_dashboard(request):
    return render(request, 'dashboard/dashboard.html')


def add_country(request):
    if request.method == 'POST':
        form = AddCountry(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return HttpResponse('Successful')

    context = {
        'form': AddCountry
    }

    return render(request, 'dashboard/add_country.html', context)

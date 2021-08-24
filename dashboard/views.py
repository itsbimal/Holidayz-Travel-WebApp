from django.shortcuts import render
from .forms import AddCountry


def user_dashboard(request):
    return render(request, 'dashboard/dashboard.html')

def add_country(request):
    form = AddCountry()
    context = {
        'form': form
    }

    return render(request, 'dashboard/add_country.html',context)
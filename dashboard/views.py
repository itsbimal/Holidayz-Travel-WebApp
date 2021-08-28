from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import logout
from admins.models import Country

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


from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from dashboard.models import Country,Offer,Place


# Create your views here.
def index_page(request):
    return render(request, 'homepage/index.html')


def pricing_page(request):
    return render(request, 'homepage/pricing.html')


def account(request):
    # if request.method == 'POST':
    #     data = request.POST
    #     var_name = data['reg_name']
    #     var_uname = data['reg_uname']
    #     var_pass = data['reg_pass']
    #     var_confpass = data['reg_confpass']
    #     user = Users.objects.create(name=var_name,
    #                                 username=var_uname,
    #                                 password=var_pass,
    #                                 confirm_password=var_confpass)
    #
    #     if user:
    #         messages.success(request,'User Created Successfully! Please login now with correct username and password!')
    #         # return HttpResponse("Created Successfully")
    #
    #     else:
    #         return HttpResponse("Failed Bro!")

    return render(request, 'homepage/account.html')


# category
def country_list(request):
    data = Country.objects.all().order_by('-id')
    context = {
        'data': data
    }
    return render(request, 'homepage/country.html',context)

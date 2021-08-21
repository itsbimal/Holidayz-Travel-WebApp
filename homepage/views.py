from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages

# Create your views here.
def index_page(request):
    return render(request, 'homepage/index.html')

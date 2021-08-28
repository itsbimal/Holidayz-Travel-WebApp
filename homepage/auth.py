from django.shortcuts import render, redirect


def unauthenticated_user(view_function):
    def wrapper_function(request, *args, **kwargs):
        if request.user.is_authenticated:
            return redirect('/dashboard')
        else:
            return view_function(request, *args, **kwargs)

    return wrapper_function


def admin_only(view_function):
    def wrapper_function(request, *args, **kwargs):
        pass


def user_only(view_function):
    def wrapper_function(request, *args, **kwargs):
        if request.user.is_staff:
            return redirect('/admins')
        else:
            return view_function(request, *args, **kwargs)

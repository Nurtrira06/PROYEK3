from django.shortcuts import render,HttpResponse,redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login,logout
from django.contrib.auth.decorators import login_required
import pandas as pd
import pickle
from django.views import View
from .models import Kanker
from django.http.response import JsonResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
import json
from app1.forms import KankerForm
from app1.models import Kanker
# Create your views here.

@login_required(login_url='login')
def HomePage(request):
    return render (request,'home.html', {'navbar': 'home'})

def SignupPage(request):
    if request.method=='POST':
        uname=request.POST.get('username')
        email=request.POST.get('email')
        pass1=request.POST.get('password1')
        pass2=request.POST.get('password2')
        
        if pass1!=pass2:
            return HttpResponse("You password and confrom password are not Same!! ")
        
        if User is not None:
             return HttpResponse("Harap isi dengan benar !!")
        else: 
            my_user=User.objects.create_user(uname,email,pass1)
            my_user.save()
            return redirect('login')
        
        
        
    return render (request,'signup.html')

def LoginPage(request):
    if request.method=='POST':
        username=request.POST.get('username')
        pass1=request.POST.get('pass') 
        User=authenticate(request,username=username,password=pass1)
        if User is not None:
            login(request,User)
            return redirect('home') 
        else:
            return HttpResponse("Username or Password is incorrect!!!")
         
    return render (request,'login.html')

def PredictPage(request):
    return render(request,'predict.html', {'navbar': 'predict'})

def result(request):
    print(request)
    rerata_jari2_lobus = int(request.POST.get('rerata_jari2_lobus'))
    rerata_tumor_inti = int(request.POST.get('rerata_tumor_inti'))
    rerata_luas_lobus = int(request.POST.get('rerata_luas_lobus'))
    rerata_luas_permukaan_tumor = int(request.POST.get('rerata_luas_permukaan_tumor'))
    rerata_cekungan_kontur = int(request.POST.get('rerata_cekungan_kontur'))
    rerata_jumlah_cekungan_kontur = int(request.POST.get('rerata_jumlah_cekungan_kontur'))
    se_jari2_lobus = int(request.POST.get('se_jari2_lobus'))
    se_tekstur_permukaan = int(request.POST.get('se_tekstur_permukaan'))
    se_tumor_inti = int(request.POST.get('se_tumor_inti'))
    se_luas_permukaan_tumor = int(request.POST.get('se_luas_permukaan_tumor'))
    se_cekungan_kontur = int(request.POST.get('se_cekungan_kontur'))
    se_jumlah_cekungan_kontur = int(request.POST.get('se_jumlah_cekungan_kontur'))
    se_fraktal_spesimen = int(request.POST.get('se_fraktal_spesimen'))
    keparahan_jari2_lobus = int(request.POST.get('keparahan_jari2_lobus'))
    keparahan_tekstur_permukaan = int(request.POST.get('keparahan_tekstur_permukaan'))
    keparahan_tumor_inti = int(request.POST.get('keparahan_tumor_inti'))
    keparahan_luas_lobus = int(request.POST.get('keparahan_luas_lobus'))
    keparahan_luas_permukaan_tumor = int(request.POST.get('keparahan_luas_permukaan_tumor'))
    keparahan_cekungan_kontur = int(request.POST.get('keparahan_cekungan_kontur'))
    keparahan_jumlah_cekungan_kontur = int(request.POST.get('keparahan_jumlah_cekungan_kontur'))
    model = pd.read_pickle("./models/model.pickle")
    result = model.predict([[rerata_jari2_lobus,rerata_tumor_inti, rerata_luas_lobus, rerata_luas_permukaan_tumor,
    rerata_cekungan_kontur, rerata_jumlah_cekungan_kontur, se_jari2_lobus,se_tekstur_permukaan,  se_tumor_inti,
    se_luas_permukaan_tumor, se_cekungan_kontur, se_jumlah_cekungan_kontur, se_fraktal_spesimen,keparahan_jari2_lobus,
    keparahan_tekstur_permukaan,  keparahan_tumor_inti, keparahan_luas_lobus, keparahan_luas_permukaan_tumor,
    keparahan_cekungan_kontur, keparahan_jumlah_cekungan_kontur]])
    return render(request, 'result.html', {'result':result})

def VisualizationPage(request):
    return render (request,'visualization.html', {'navbar': 'visalization'})

def LogoutPage(request):
    logout(request)
    return redirect('login')



### IMPLEMENTASI CRUD
def knkr(request):
    if request.method == "POST":
        form = KankerForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/viewdata')
            except:
                pass
    else:
        form = KankerForm()
    return render(request, 'haltambah.html', {'form': form})

def viewdata(request):
    kanker = Kanker.objects.all()
    return render(request, "view.html", {'kanker': kanker})


def delete(request, id):
    kanker = Kanker.objects.get(id=id)
    kanker.delete()
    return redirect("/view")


def edit(request, id):
    kanker = Kanker.objects.get(id=id)
    return render(request, 'edit.html', {'kanker': kanker})

def update(request, id):
    kanker = Kanker.objects.get(id=id)
    form = KankerForm(instance=kanker)

    if request.method == 'POST':
        form = KankerForm(request.POST, instance=kanker)
        if form.is_valid():
            form.save()
            return redirect('/viewdata')
    return render(request, 'view.html', {'form': form})
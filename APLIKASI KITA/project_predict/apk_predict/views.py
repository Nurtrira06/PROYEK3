from django.shortcuts import render, redirect
import pandas as pd
import pickle
from django.views import View
from .models import Kanker
from django.http.response import JsonResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
import json
from apk_predict.forms import KankerForm
from apk_predict.models import Kanker


# Create your views here.
def index(request):
    context = {'a' : 1}
    return render(request, 'index.html', context)

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

def visualisasi(request):
    return render(request, 'visualisasi.html')

### IMPLEMENTASI CRUD
def knkr(request):
    if request.method == "POST":
        form = KankerForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('/view')
            except:
                pass
    else:
        form = KankerForm()
    return render(request, 'haltambah.html', {'form': form})

def view(request):
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
            return redirect('/view')
    return render(request, 'view.html', {'form': form})
from django.shortcuts import render
from django.views import View
from .models import Kanker
from django.http.response import JsonResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
import json
# Create your views here.

class KankerView(View):

    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)



    def get(self, request, id=0):
        if(id>0):
            kankers=list(Kanker.objects.filter(id=id).values())
            if len(kankers) > 0:
                kankers = kankers[0]
                datos={'message':"Success", 'kankers':kankers}
            else:
                datos={'message':"Data kanker tersebut tidak ditemukan"}
            return JsonResponse(datos)
        else:
            kankers= list(Kanker.objects.values())
            if len(kankers)>0:
                datos={'message':"Success", 'kankers':kankers}
            else:
                datos={'message':"Data tidak ditemukan"}
            return JsonResponse(datos)


    def post(self, request):
        # print(request.body)
        jd = json.loads(request.body)
        # print(jd)
        Kanker.objects.create(rerata_jari2_lobus=jd['rerata_jari2_lobus'],
                              rerata_tumor_inti=jd['rerata_tumor_inti'],
                              rerata_luas_lobus=jd['rerata_luas_lobus'],
                              rerata_luas_permukaan_tumor=jd['rerata_luas_permukaan_tumor'],
                              rerata_cekungan_kontur=jd['rerata_cekungan_kontur'],
                              rerata_jumlah_cekungan_kontur=jd['rerata_jumlah_cekungan_kontur'],
                              se_jari2_lobus=jd['se_jari2_lobus'],
                              se_tekstur_permukaan=jd['se_tekstur_permukaan'],
                              se_tumor_inti=jd['se_tumor_inti'],
                              se_luas_permukaan_tumor=jd['se_luas_permukaan_tumor'],
                              se_cekungan_kontur=jd['se_cekungan_kontur'],
                              se_jumlah_cekungan_kontur=jd['se_jumlah_cekungan_kontur'],
                              keparahan_jari2_lobus=jd['keparahan_jari2_lobus'],
                              keparahan_tekstur_permukaan=jd['keparahan_tekstur_permukaan'],
                              keparahan_tumor_inti=jd['keparahan_tumor_inti'],
                              keparahan_luas_lobus=jd['keparahan_luas_lobus'],
                              keparahan_luas_permukaan_tumor=jd['keparahan_luas_permukaan_tumor'],
                              keparahan_cekungan_kontur=jd['keparahan_cekungan_kontur'],
                              keparahan_jumlah_cekungan_kontur=jd['keparahan_jumlah_cekungan_kontur']
                             )
        datos={'message':"Success"}
        return JsonResponse(datos)

    def put(self, request, id):
        jd = json.loads(request.body)
        kankers=list(Kanker.objects.filter(id=id).values())
        if len(kankers) > 0:
            kanker=Kanker.objects.get(id=id)
            kanker.rerata_jari2_lobus = jd['rerata_jari2_lobus']
            kanker.rerata_tumor_inti = jd['rerata_tumor_inti']
            kanker.rerata_luas_lobus = jd['rerata_luas_lobus']
            kanker.rerata_luas_permukaan_tumor = jd['rerata_luas_permukaan_tumor']
            kanker.rerata_cekungan_kontur = jd['rerata_cekungan_kontur']
            kanker.rerata_jumlah_cekungan_kontur = jd['rerata_jumlah_cekungan_kontur']
            kanker.se_jari2_lobus = jd['se_jari2_lobus']
            kanker.se_tekstur_permukaan = jd['se_tekstur_permukaan']
            kanker.se_tumor_inti = jd['se_tumor_inti']
            kanker.se_luas_permukaan_tumor = jd['se_luas_permukaan_tumor']
            kanker.se_cekungan_kontur = jd['se_cekungan_kontur']
            kanker.se_jumlah_cekungan_kontur = jd['se_jumlah_cekungan_kontur']
            kanker.keparahan_jari2_lobus = jd['keparahan_jari2_lobus']
            kanker.keparahan_tekstur_permukaan = jd['keparahan_tekstur_permukaan']
            kanker.keparahan_tumor_inti = jd['keparahan_tumor_inti']
            kanker.keparahan_luas_lobus = jd['keparahan_luas_lobus']
            kanker.keparahan_luas_permukaan_tumor = jd['keparahan_luas_permukaan_tumor']
            kanker.keparahan_cekungan_kontur = jd['keparahan_cekungan_kontur']
            kanker.keparahan_jumlah_cekungan_kontur = jd['keparahan_jumlah_cekungan_kontur']
            kanker.save()
            datos={'message':"Success"}
        else:
            datos={'message':"Data kanker tersebut tidak ditemukan"}
        return JsonResponse(datos)

    def delete(self, request, id):
        kankers=list(Kanker.objects.filter(id=id).values())
        if len(kankers) > 0:
            Kanker.objects.filter(id=id).delete()
            datos={'message':"Success"}
        else:
            datos={'message':"Data kanker tersebut tidak ditemukan"}
        return JsonResponse(datos)
from django.db import models

# Create your models here.
class Kanker(models.Model):
    rerata_jari2_lobus=models.IntegerField()
    rerata_tumor_inti=models.IntegerField()
    rerata_luas_lobus=models.IntegerField()
    rerata_luas_permukaan_tumor=models.IntegerField()
    rerata_cekungan_kontur=models.IntegerField()
    rerata_jumlah_cekungan_kontur=models.IntegerField()
    se_jari2_lobus=models.IntegerField()
    se_tekstur_permukaan=models.IntegerField()
    se_tumor_inti=models.IntegerField()
    se_luas_permukaan_tumor=models.IntegerField()
    se_cekungan_kontur=models.IntegerField()
    se_jumlah_cekungan_kontur=models.IntegerField()
    keparahan_jari2_lobus=models.IntegerField()
    keparahan_tekstur_permukaan=models.IntegerField()
    keparahan_tumor_inti=models.IntegerField()
    keparahan_luas_lobus=models.IntegerField()
    keparahan_luas_permukaan_tumor=models.IntegerField()
    keparahan_cekungan_kontur=models.IntegerField()
    keparahan_jumlah_cekungan_kontur=models.IntegerField()

# Generated by Django 4.1.2 on 2023-01-13 04:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Kanker",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("rerata_jari2_lobus", models.IntegerField()),
                ("rerata_tumor_inti", models.IntegerField()),
                ("rerata_luas_lobus", models.IntegerField()),
                ("rerata_luas_permukaan_tumor", models.IntegerField()),
                ("rerata_cekungan_kontur", models.IntegerField()),
                ("rerata_jumlah_cekungan_kontur", models.IntegerField()),
                ("se_jari2_lobus", models.IntegerField()),
                ("se_tekstur_permukaan", models.IntegerField()),
                ("se_tumor_inti", models.IntegerField()),
                ("se_luas_permukaan_tumor", models.IntegerField()),
                ("se_cekungan_kontur", models.IntegerField()),
                ("se_jumlah_cekungan_kontur", models.IntegerField()),
                ("se_fraktal_spesimen", models.IntegerField()),
                ("keparahan_jari2_lobus", models.IntegerField()),
                ("keparahan_tekstur_permukaan", models.IntegerField()),
                ("keparahan_tumor_inti", models.IntegerField()),
                ("keparahan_luas_lobus", models.IntegerField()),
                ("keparahan_luas_permukaan_tumor", models.IntegerField()),
                ("keparahan_cekungan_kontur", models.IntegerField()),
                ("keparahan_jumlah_cekungan_kontur", models.IntegerField()),
            ],
        ),
    ]

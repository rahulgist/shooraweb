# Generated by Django 4.2 on 2023-06-05 06:43

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("slider", "0005_alter_slider_slider_title"),
    ]

    operations = [
        migrations.AddField(
            model_name="slider",
            name="slider_status",
            field=models.IntegerField(default=1),
        ),
    ]
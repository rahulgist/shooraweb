# Generated by Django 4.2 on 2023-06-04 06:00

from django.db import migrations, models
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='vision',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('sub_title1', models.CharField(max_length=100)),
                ('Sub_title2', models.CharField(max_length=100)),
                ('sub_title1_description', tinymce.models.HTMLField()),
                ('sub_title2_description', tinymce.models.HTMLField()),
            ],
        ),
    ]

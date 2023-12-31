# Generated by Django 4.2 on 2023-06-02 13:57

from django.db import migrations, models
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='short_description',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='homepage',
            name='heading1_description',
            field=tinymce.models.HTMLField(),
        ),
        migrations.AlterField(
            model_name='homepage',
            name='heading2_description',
            field=tinymce.models.HTMLField(),
        ),
    ]

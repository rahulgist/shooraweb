# Generated by Django 4.2 on 2023-06-01 16:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('setting', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='setting',
            name='alc',
            field=models.IntegerField(null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='branch',
            field=models.IntegerField(null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='district',
            field=models.IntegerField(null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='state',
            field=models.IntegerField(null=True),
        ),
    ]
# Generated by Django 4.2 on 2023-06-01 17:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='homepage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('heading1', models.CharField(max_length=50)),
                ('heading1_description', models.TextField()),
                ('heading2', models.CharField(max_length=50)),
                ('heading2_description', models.TextField()),
            ],
        ),
    ]

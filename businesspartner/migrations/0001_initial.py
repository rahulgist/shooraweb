# Generated by Django 4.2 on 2023-06-02 13:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Businesspartner',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Business_partner', models.FileField(default=None, max_length=250, null=True, upload_to='business_partner/')),
            ],
        ),
    ]
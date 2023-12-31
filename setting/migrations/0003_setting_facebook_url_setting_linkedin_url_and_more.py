# Generated by Django 4.2 on 2023-06-01 17:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('setting', '0002_setting_alc_setting_branch_setting_district_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='setting',
            name='facebook_url',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='linkedin_url',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='registered_address',
            field=models.TextField(null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='short_description',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='setting',
            name='twitter_url',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='setting',
            name='contact_no',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='setting',
            name='email',
            field=models.EmailField(max_length=254, null=True),
        ),
        migrations.AlterField(
            model_name='setting',
            name='title',
            field=models.CharField(max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='setting',
            name='websiteUrl',
            field=models.CharField(max_length=50, null=True),
        ),
    ]

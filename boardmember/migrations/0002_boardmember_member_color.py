# Generated by Django 4.2 on 2023-06-04 06:34

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("boardmember", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="boardmember",
            name="member_color",
            field=models.CharField(default=1, max_length=50),
            preserve_default=False,
        ),
    ]
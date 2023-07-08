from django.db import models
from tinymce.models import HTMLField


# Create your models here.
class Businesspartner(models.Model):
    short_image_description = models.CharField(max_length=150, null=True)
    Business_partner = models.FileField(upload_to="business_partner/",max_length=250,null=True,default=None)

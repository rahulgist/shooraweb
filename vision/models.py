from django.db import models
from tinymce.models import HTMLField
# Create your models here.
class vision(models.Model):
    
    title = models.CharField(max_length=100)
    sub_title1 = models.CharField(max_length=100)
    Sub_title2 = models.CharField(max_length=100)
    sub_title1_description = HTMLField()
    sub_title2_description = HTMLField()

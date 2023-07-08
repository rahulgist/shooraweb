from django.db import models
from tinymce.models import HTMLField

# Create your models here.
class homepage(models.Model):
    heading1 = models.CharField(max_length=50)
    heading1_description = HTMLField()
    heading2 = models.CharField(max_length=50)
    heading2_description = HTMLField()
    short_description = models.CharField(max_length=50,null=True)
    #short_description = models.CharField(max_length=50,null=True)
    # created_at = models.DateTimeField(auto_now_add=True)
    # updated_at = models.DateTimeField(auto_now=True)

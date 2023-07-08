from django.db import models
from tinymce.models import HTMLField
# Create your models here.
class boardmember(models.Model):
    member_name = models.CharField(max_length=50)
    member_designation = models.CharField(max_length=100)
    member_profile = HTMLField()
    member_color = models.CharField(max_length=50)
    

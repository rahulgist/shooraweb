from django.db import models
from tinymce.models import HTMLField

# Create your models here.
class aboutus(models.Model):
    title = models.CharField(max_length=100)
    description = HTMLField()
    # created_at = models.DateTimeField(auto_now_add=True)
    # updated_at = models.DateTimeField(auto_now=True)
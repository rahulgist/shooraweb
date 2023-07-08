from django.db import models
from tinymce.models import HTMLField
# Create your models here.
class policy(models.Model):
    policy_type = models.CharField(max_length=100)
    policy_title = models.CharField(max_length=100)
    policy_description = HTMLField()
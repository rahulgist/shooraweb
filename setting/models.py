from django.db import models
from tinymce.models import HTMLField

# Create your models here.
class setting(models.Model):
    title = models.CharField(max_length=50,null=True)
    websiteUrl = models.CharField(max_length=50,null=True)
    website_logo = models.FileField(upload_to="logo/",max_length=250,null=True,default=None) 
    contact_no = models.CharField(max_length=50,null=True)
    registered_address = HTMLField()
    short_description = models.CharField(max_length=100,null=True)
    email = models.EmailField(null=True)
    state = models.IntegerField(null=True)
    district = models.IntegerField(null=True)
    state = models.IntegerField(null=True)
    branch = models.IntegerField(null=True)
    alc = models.IntegerField(null=True)
    facebook_url = models.CharField(max_length=50,null=True)
    twitter_url = models.CharField(max_length=50,null=True)
    linkedin_url = models.CharField(max_length=50,null=True)
    # created_at = models.DateTimeField(auto_now_add=True)
    # updated_at = models.DateTimeField(auto_now=True)


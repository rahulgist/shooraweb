from django.db import models
from tinymce.models import HTMLField
from menuhandler.models import menuhandler

# Create your models here.
class slider(models.Model):
    menuhandler = models.ForeignKey(menuhandler,on_delete=models.CASCADE)
    slider_title = models.CharField(max_length=150)
    slider_short_description = models.CharField(max_length=150,null=True,blank=True)
    slider_images = models.FileField(upload_to="slider/%y%m%d",max_length=250,null=True,default=None)
    slider_url = models.CharField(max_length=150,null=True)
    slider_status = models.IntegerField(default=1)
    def __str__(self):
        return self.slider_title

   

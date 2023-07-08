from django.db import models
from businessprocess.models import businessprocess
from tinymce.models import HTMLField
# Create your models here.
class businessprocessdescription(models.Model):
    businessprocess = models.ForeignKey(businessprocess,on_delete=models.CASCADE)
    title = models.CharField(max_length=100, null=True)
    color = models.CharField(max_length=100, null=True)
    description = HTMLField()
    

    def __str__(self):
        return self.title

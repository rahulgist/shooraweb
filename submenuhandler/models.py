from django.db import models
from menuhandler.models import menuhandler
# Create your models here.
class submenuhandler(models.Model):
    menuhandler = models.ForeignKey(menuhandler,on_delete=models.CASCADE)
    sub_title = models.CharField(max_length=100, null=True)
    subweb_url = models.CharField(max_length=100,null=True)
    

    def __str__(self):
        return self.sub_title

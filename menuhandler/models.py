from django.db import models

# Create your models here.
class menuhandler(models.Model):
    title = models.CharField(max_length=100)
    # web_url = models.CharField(max_length=100,null=True)
    is_main_menu = models.IntegerField(default=0)
    has_sub_menu = models.IntegerField(default=0)
    web_url = models.CharField(max_length=150, blank=True)

    def __str__(self):
        return self.title
    


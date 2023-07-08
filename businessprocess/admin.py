from django.contrib import admin
from businessprocess.models import businessprocess

# Register your models here.

class businessprocessAdmin(admin.ModelAdmin):
    list_display= ('id','title')

admin.site.register(businessprocess,businessprocessAdmin)

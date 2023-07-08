from django.contrib import admin
from businessprocessdescription.models import businessprocessdescription

# Register your models here.

class businessprocessdescriptionAdmin(admin.ModelAdmin):
    list_display= ('businessprocess','title','description')

admin.site.register(businessprocessdescription,businessprocessdescriptionAdmin)

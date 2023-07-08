from django.contrib import admin
from vision.models import vision
# Register your models here.

class visionAdmin(admin.ModelAdmin):
    list_display= ('title','sub_title1','sub_title1_description','Sub_title2','sub_title2_description')

admin.site.register(vision,visionAdmin)

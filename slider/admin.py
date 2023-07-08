from django.contrib import admin
from slider.models import slider
# Register your models here.

class SliderAdmin(admin.ModelAdmin):
    list_display= ('menuhandler','slider_title','slider_short_description','slider_images','slider_url')

admin.site.register(slider,SliderAdmin)

from django.contrib import admin
from aboutus.models import aboutus
# Register your models here.

class aboutusAdmin(admin.ModelAdmin):
    list_display= ('title','description')

admin.site.register(aboutus,aboutusAdmin)

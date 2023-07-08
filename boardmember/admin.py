from django.contrib import admin
from boardmember.models import boardmember

# Register your models here.

class boardmemberAdmin(admin.ModelAdmin):
    list_display= ('member_color','member_name','member_designation','member_profile')

admin.site.register(boardmember,boardmemberAdmin)
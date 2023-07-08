from django.contrib import admin
from loanproduct.models import loanproduct
# Register your models here.

class loanproductAdmin(admin.ModelAdmin):
    list_display= ('loan_title','loan_amount','loan_roi','loan_tenure')

admin.site.register(loanproduct,loanproductAdmin)

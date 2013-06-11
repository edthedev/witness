from django.conf.urls import patterns, include, url

from witness.views import (SubmissionCreate, 
    SubmissionUpdate, DeleteSubmission, SubmissionDetail, SubmissionList)
from witness.models import Submission

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    url(r'^(?P<slug>[-_\w]+)/$', SubmissionDetail.as_view(), name='submission-detail'),
    url(r'', SubmissionList.as_view(), name='submission-list'), 
    url(r'new', SubmissionCreate.as_view(), name='submission-create'), 

    # Examples:
    # url(r'^$', 'mysite.views.home', name='home'),
    # url(r'^mysite/', include('mysite.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)

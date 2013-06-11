from django.views.generic.edit import UpdateView, CreateView, DeleteView
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

from django.core.urlresolvers import reverse_lazy
from witness.models import Submission

class SubmissionList(ListView):
    model = Submission

class SubmissionDetail(DetailView):
    model = Submission

class DeleteSubmission(DeleteView):
    model = Submission

class SubmissionCreate(CreateView):
    model = Submission

class SubmissionUpdate(UpdateView):
    model = Submission
        


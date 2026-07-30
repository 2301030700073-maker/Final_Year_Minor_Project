package com.android.contacts;

import android.app.job.JobParameters;
import android.app.job.JobService;

/* loaded from: classes.dex */
public class ContactsJobService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (jobParameters.getJobId() != 1) {
            return false;
        }
        DynamicShortcuts.updateFromJob(this, jobParameters);
        return true;
    }
}

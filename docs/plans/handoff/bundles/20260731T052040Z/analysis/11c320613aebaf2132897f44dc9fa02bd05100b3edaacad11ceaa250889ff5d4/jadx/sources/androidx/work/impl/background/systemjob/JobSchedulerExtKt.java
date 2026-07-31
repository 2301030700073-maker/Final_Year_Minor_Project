package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.core.widget.TextViewCompat$Api34Impl;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class JobSchedulerExtKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobScheduler");

    public static final JobScheduler getWmJobScheduler(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("jobscheduler");
        systemService.getClass();
        JobScheduler jobScheduler = (JobScheduler) systemService;
        return Build.VERSION.SDK_INT >= 34 ? TextViewCompat$Api34Impl.forNamespace(jobScheduler) : jobScheduler;
    }
}

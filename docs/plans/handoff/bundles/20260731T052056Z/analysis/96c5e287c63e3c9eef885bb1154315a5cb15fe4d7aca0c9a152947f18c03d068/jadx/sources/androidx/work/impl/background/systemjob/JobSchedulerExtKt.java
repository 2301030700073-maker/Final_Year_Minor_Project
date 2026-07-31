package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.core.util.TypedValueCompat$Api34Impl;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JobSchedulerExtKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobScheduler");

    public static final JobScheduler getWmJobScheduler(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("jobscheduler");
        systemService.getClass();
        JobScheduler jobScheduler = (JobScheduler) systemService;
        return Build.VERSION.SDK_INT >= 34 ? TypedValueCompat$Api34Impl.forNamespace(jobScheduler) : jobScheduler;
    }
}

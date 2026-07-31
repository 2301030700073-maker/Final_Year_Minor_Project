package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.work.Logger$LogcatLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JobSchedulerExtKt {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemJobScheduler");

    public static final JobScheduler getWmJobScheduler(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("jobscheduler");
        systemService.getClass();
        JobScheduler jobScheduler = (JobScheduler) systemService;
        return Build.VERSION.SDK_INT >= 34 ? Api34Compat.forNamespace(jobScheduler) : jobScheduler;
    }
}

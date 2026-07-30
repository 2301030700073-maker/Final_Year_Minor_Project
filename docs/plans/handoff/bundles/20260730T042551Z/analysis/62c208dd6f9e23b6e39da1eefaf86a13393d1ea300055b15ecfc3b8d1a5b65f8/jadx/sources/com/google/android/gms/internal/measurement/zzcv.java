package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
/* loaded from: classes.dex */
public final class zzcv {
    private static final Method zza = zzc();
    private static final Method zzb = zzb();
    private final JobScheduler zzc;

    private zzcv(JobScheduler jobScheduler) {
        this.zzc = jobScheduler;
    }

    private static int zza() {
        Method method = zzb;
        if (method != null) {
            try {
                Integer num = (Integer) method.invoke(UserHandle.class, new Object[0]);
                if (num != null) {
                    return num.intValue();
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return 0;
    }

    private static Method zzb() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return UserHandle.class.getDeclaredMethod("myUserId", new Class[0]);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static Method zzc() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private final int zza(JobInfo jobInfo, String str, int i, String str2) {
        Method method = zza;
        if (method != null) {
            try {
                Integer num = (Integer) method.invoke(this.zzc, jobInfo, str, Integer.valueOf(i), str2);
                if (num != null) {
                    return num.intValue();
                }
                return 0;
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return this.zzc.schedule(jobInfo);
    }

    public static int zza(Context context, JobInfo jobInfo, String str, String str2) {
        int checkSelfPermission;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        jobScheduler.getClass();
        if (zza != null) {
            checkSelfPermission = context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS");
            if (checkSelfPermission == 0) {
                return new zzcv(jobScheduler).zza(jobInfo, str, zza(), str2);
            }
        }
        return jobScheduler.schedule(jobInfo);
    }
}

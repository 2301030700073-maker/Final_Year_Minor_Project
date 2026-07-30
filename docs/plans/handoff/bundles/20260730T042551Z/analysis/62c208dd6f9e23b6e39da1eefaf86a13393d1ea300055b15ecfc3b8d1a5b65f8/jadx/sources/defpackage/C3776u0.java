package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.Cdo;

/* renamed from: u0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3776u0 {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f15844do = 0;

    static {
        AbstractC0614Xq.m2870try("Alarms");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8369do(Context context, int i, String str) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, Cdo.m4738do(context, str), Build.VERSION.SDK_INT >= 23 ? 603979776 : 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i));
        m2869for.mo2872do(new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8370for(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, Cdo.m4738do(context, str), Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8371if(Context context, GM gm, String str, long j) {
        int intValue;
        WorkDatabase workDatabase = gm.f1178do;
        C3910wG c3910wG = (C3910wG) workDatabase.mo4726catch();
        C3792uG m8566do = c3910wG.m8566do(str);
        if (m8566do != null) {
            m8369do(context, m8566do.f15871do, str);
            m8370for(context, str, m8566do.f15871do, j);
            return;
        }
        synchronized (C3173jn.class) {
            workDatabase.m8560for();
            try {
                Long m7486do = ((C3360mx) workDatabase.mo4725break()).m7486do("next_alarm_manager_id");
                int i = 0;
                intValue = m7486do != null ? m7486do.intValue() : 0;
                if (intValue != Integer.MAX_VALUE) {
                    i = intValue + 1;
                }
                ((C3360mx) workDatabase.mo4725break()).m7487if(new C3242kx("next_alarm_manager_id", i));
                workDatabase.m8561goto();
            } finally {
                workDatabase.m8557case();
            }
        }
        C3792uG c3792uG = new C3792uG(str, intValue);
        AbstractC3904wA abstractC3904wA = c3910wG.f16309do;
        abstractC3904wA.m8562if();
        abstractC3904wA.m8560for();
        try {
            c3910wG.f16310do.m6827try(c3792uG);
            abstractC3904wA.m8561goto();
            abstractC3904wA.m8557case();
            m8370for(context, str, intValue, j);
        } catch (Throwable th) {
            abstractC3904wA.m8557case();
            throw th;
        }
    }
}

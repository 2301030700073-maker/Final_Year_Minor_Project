package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.text.TextUtils;
import androidx.work.Cdo;
import defpackage.AbstractC0614Xq;
import defpackage.C0731b6;
import defpackage.C4034yM;
import defpackage.GM;
import defpackage.Kx;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ForceStopRunnable implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public static final long f8223do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GM f8224do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f8225do;

    /* renamed from: for, reason: not valid java name */
    public int f8226for = 0;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        static {
            AbstractC0614Xq.m2870try("ForceStopRunnable$Rcvr");
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            int i = ((AbstractC0614Xq.Cdo) AbstractC0614Xq.m2869for()).f4613do;
            ForceStopRunnable.m4756for(context);
        }
    }

    static {
        AbstractC0614Xq.m2870try("ForceStopRunnable");
        f8223do = TimeUnit.DAYS.toMillis(3650L);
    }

    public ForceStopRunnable(Context context, GM gm) {
        this.f8225do = context.getApplicationContext();
        this.f8224do = gm;
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: for, reason: not valid java name */
    public static void m4756for(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i = C0731b6.m4813if() ? 167772160 : 134217728;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i);
        long currentTimeMillis = System.currentTimeMillis() + f8223do;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094 A[SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4757do() {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.ForceStopRunnable.m4757do():void");
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m4758if() {
        Cdo cdo = this.f8224do.f1177do;
        cdo.getClass();
        if (TextUtils.isEmpty(null)) {
            AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
            return true;
        }
        boolean m1228do = Kx.m1228do(this.f8225do, cdo);
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Is default app process = %s", Boolean.valueOf(m1228do));
        m2869for.mo2872do(new Throwable[0]);
        return m1228do;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GM gm = this.f8224do;
        try {
            if (!m4758if()) {
                return;
            }
            while (true) {
                C4034yM.m8715do(this.f8225do);
                AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
                try {
                    m4757do();
                    return;
                } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                    int i = this.f8226for + 1;
                    this.f8226for = i;
                    if (i >= 3) {
                        AbstractC0614Xq.m2869for().mo2873if(e);
                        IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                        gm.f1177do.getClass();
                        throw illegalStateException;
                    }
                    long j = i * 300;
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Retrying after %s", Long.valueOf(j));
                    m2869for.mo2872do(e);
                    try {
                        Thread.sleep(this.f8226for * 300);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } finally {
            gm.m733else();
        }
    }
}

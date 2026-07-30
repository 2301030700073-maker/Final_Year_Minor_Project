package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import defpackage.AbstractC0614Xq;
import defpackage.GM;
import defpackage.InterfaceC0231Gg;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements InterfaceC0231Gg {

    /* renamed from: do, reason: not valid java name */
    public GM f8198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8199do = new HashMap();

    static {
        AbstractC0614Xq.m2870try("SystemJobService");
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        JobParameters jobParameters;
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("%s executed on JobScheduler", str);
        m2869for.mo2872do(new Throwable[0]);
        synchronized (this.f8199do) {
            jobParameters = (JobParameters) this.f8199do.remove(str);
        }
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            GM m731try = GM.m731try(getApplicationContext());
            this.f8198do = m731try;
            m731try.f1174do.m1365do(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            AbstractC0614Xq.m2869for().mo2871case(new Throwable[0]);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        GM gm = this.f8198do;
        if (gm != null) {
            gm.f1174do.m1363case(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    @Override // android.app.job.JobService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStartJob(android.app.job.JobParameters r9) {
        /*
            r8 = this;
            GM r0 = r8.f8198do
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L13
            Xq r0 = defpackage.AbstractC0614Xq.m2869for()
            java.lang.Throwable[] r3 = new java.lang.Throwable[r2]
            r0.mo2872do(r3)
            r8.jobFinished(r9, r1)
            return r2
        L13:
            java.lang.String r0 = "EXTRA_WORK_SPEC_ID"
            r3 = 0
            android.os.PersistableBundle r4 = r9.getExtras()     // Catch: java.lang.NullPointerException -> L27
            if (r4 == 0) goto L27
            boolean r5 = r4.containsKey(r0)     // Catch: java.lang.NullPointerException -> L27
            if (r5 == 0) goto L27
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.NullPointerException -> L27
            goto L28
        L27:
            r0 = r3
        L28:
            boolean r4 = android.text.TextUtils.isEmpty(r0)
            if (r4 == 0) goto L38
            Xq r9 = defpackage.AbstractC0614Xq.m2869for()
            java.lang.Throwable[] r0 = new java.lang.Throwable[r2]
            r9.mo2873if(r0)
            return r2
        L38:
            java.util.HashMap r4 = r8.f8199do
            monitor-enter(r4)
            java.util.HashMap r5 = r8.f8199do     // Catch: java.lang.Throwable -> Laa
            boolean r5 = r5.containsKey(r0)     // Catch: java.lang.Throwable -> Laa
            if (r5 == 0) goto L57
            Xq r9 = defpackage.AbstractC0614Xq.m2869for()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r3 = "Job is already being executed by SystemJobService: %s"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Laa
            r1[r2] = r0     // Catch: java.lang.Throwable -> Laa
            java.lang.String.format(r3, r1)     // Catch: java.lang.Throwable -> Laa
            java.lang.Throwable[] r0 = new java.lang.Throwable[r2]     // Catch: java.lang.Throwable -> Laa
            r9.mo2872do(r0)     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Laa
            return r2
        L57:
            Xq r5 = defpackage.AbstractC0614Xq.m2869for()     // Catch: java.lang.Throwable -> Laa
            java.lang.String r6 = "onStartJob for %s"
            java.lang.Object[] r7 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Laa
            r7[r2] = r0     // Catch: java.lang.Throwable -> Laa
            java.lang.String.format(r6, r7)     // Catch: java.lang.Throwable -> Laa
            java.lang.Throwable[] r2 = new java.lang.Throwable[r2]     // Catch: java.lang.Throwable -> Laa
            r5.mo2872do(r2)     // Catch: java.lang.Throwable -> Laa
            java.util.HashMap r2 = r8.f8199do     // Catch: java.lang.Throwable -> Laa
            r2.put(r0, r9)     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Laa
            int r2 = android.os.Build.VERSION.SDK_INT
            r4 = 24
            if (r2 < r4) goto La4
            androidx.work.WorkerParameters$do r3 = new androidx.work.WorkerParameters$do
            r3.<init>()
            android.net.Uri[] r4 = defpackage.F1.m554import(r9)
            if (r4 == 0) goto L8a
            android.net.Uri[] r4 = defpackage.F1.m554import(r9)
            java.util.List r4 = java.util.Arrays.asList(r4)
            r3.f8135if = r4
        L8a:
            java.lang.String[] r4 = defpackage.A1.m15const(r9)
            if (r4 == 0) goto L9a
            java.lang.String[] r4 = defpackage.A1.m15const(r9)
            java.util.List r4 = java.util.Arrays.asList(r4)
            r3.f8134do = r4
        L9a:
            r4 = 28
            if (r2 < r4) goto La4
            android.net.Network r9 = defpackage.C2901i.m6855case(r9)
            r3.f8133do = r9
        La4:
            GM r9 = r8.f8198do
            r9.m736this(r0, r3)
            return r1
        Laa:
            r9 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> Laa
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStartJob(android.app.job.JobParameters):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    @Override // android.app.job.JobService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStopJob(android.app.job.JobParameters r6) {
        /*
            r5 = this;
            GM r0 = r5.f8198do
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L10
            Xq r6 = defpackage.AbstractC0614Xq.m2869for()
            java.lang.Throwable[] r0 = new java.lang.Throwable[r2]
            r6.mo2872do(r0)
            return r1
        L10:
            java.lang.String r0 = "EXTRA_WORK_SPEC_ID"
            android.os.PersistableBundle r6 = r6.getExtras()     // Catch: java.lang.NullPointerException -> L23
            if (r6 == 0) goto L23
            boolean r3 = r6.containsKey(r0)     // Catch: java.lang.NullPointerException -> L23
            if (r3 == 0) goto L23
            java.lang.String r6 = r6.getString(r0)     // Catch: java.lang.NullPointerException -> L23
            goto L24
        L23:
            r6 = 0
        L24:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L34
            Xq r6 = defpackage.AbstractC0614Xq.m2869for()
            java.lang.Throwable[] r0 = new java.lang.Throwable[r2]
            r6.mo2873if(r0)
            return r2
        L34:
            Xq r0 = defpackage.AbstractC0614Xq.m2869for()
            java.lang.String r3 = "onStopJob for %s"
            java.lang.Object[] r4 = new java.lang.Object[r1]
            r4[r2] = r6
            java.lang.String.format(r3, r4)
            java.lang.Throwable[] r2 = new java.lang.Throwable[r2]
            r0.mo2872do(r2)
            java.util.HashMap r0 = r5.f8199do
            monitor-enter(r0)
            java.util.HashMap r2 = r5.f8199do     // Catch: java.lang.Throwable -> L5e
            r2.remove(r6)     // Catch: java.lang.Throwable -> L5e
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5e
            GM r0 = r5.f8198do
            r0.m732break(r6)
            GM r0 = r5.f8198do
            Lx r0 = r0.f1174do
            boolean r6 = r0.m1368new(r6)
            r6 = r6 ^ r1
            return r6
        L5e:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5e
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.SystemJobService.onStopJob(android.app.job.JobParameters):boolean");
    }
}

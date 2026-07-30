package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.work.Cdo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* renamed from: yG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4028yG implements InterfaceC3846vB {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f16725for = 0;

    /* renamed from: do, reason: not valid java name */
    public final GM f16726do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JobScheduler f16727do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16728do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3969xG f16729do;

    static {
        AbstractC0614Xq.m2870try("SystemJobScheduler");
    }

    public C4028yG(Context context, GM gm) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        C3969xG c3969xG = new C3969xG(context);
        this.f16728do = context;
        this.f16726do = gm;
        this.f16727do = jobScheduler;
        this.f16729do = c3969xG;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8707do(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i));
            m2869for.mo2873if(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0012 A[SYNTHETIC] */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList m8708for(android.content.Context r5, android.app.job.JobScheduler r6, java.lang.String r7) {
        /*
            java.util.ArrayList r5 = m8709new(r5, r6)
            r6 = 0
            if (r5 != 0) goto L8
            return r6
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 2
            r0.<init>(r1)
            java.util.Iterator r5 = r5.iterator()
        L12:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L44
            java.lang.Object r1 = r5.next()
            android.app.job.JobInfo r1 = (android.app.job.JobInfo) r1
            java.lang.String r2 = "EXTRA_WORK_SPEC_ID"
            android.os.PersistableBundle r3 = r1.getExtras()
            if (r3 == 0) goto L31
            boolean r4 = r3.containsKey(r2)     // Catch: java.lang.NullPointerException -> L31
            if (r4 == 0) goto L31
            java.lang.String r2 = r3.getString(r2)     // Catch: java.lang.NullPointerException -> L31
            goto L32
        L31:
            r2 = r6
        L32:
            boolean r2 = r7.equals(r2)
            if (r2 == 0) goto L12
            int r1 = r1.getId()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.add(r1)
            goto L12
        L44:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4028yG.m8708for(android.content.Context, android.app.job.JobScheduler, java.lang.String):java.util.ArrayList");
    }

    /* renamed from: new, reason: not valid java name */
    public static ArrayList m8709new(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            AbstractC0614Xq.m2869for().mo2873if(th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: case */
    public final void mo1455case(TM... tmArr) {
        int i;
        ArrayList m8708for;
        int m7173do;
        TM[] tmArr2 = tmArr;
        GM gm = this.f16726do;
        WorkDatabase workDatabase = gm.f1178do;
        C3173jn c3173jn = new C3173jn(workDatabase);
        int length = tmArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            TM tm = tmArr2[i3];
            workDatabase.m8560for();
            try {
                TM m2641this = ((VM) workDatabase.mo4729final()).m2641this(tm.f3655do);
                if (m2641this == null) {
                    AbstractC0614Xq.m2869for().mo2871case(new Throwable[i2]);
                    workDatabase.m8561goto();
                } else if (m2641this.f3652do != CM.ENQUEUED) {
                    AbstractC0614Xq.m2869for().mo2871case(new Throwable[i2]);
                    workDatabase.m8561goto();
                } else {
                    C3792uG m8566do = ((C3910wG) workDatabase.mo4726catch()).m8566do(tm.f3655do);
                    if (m8566do == null) {
                        gm.f1177do.getClass();
                        int i4 = gm.f1177do.f8142if;
                        synchronized (C3173jn.class) {
                            try {
                                WorkDatabase workDatabase2 = c3173jn.f13804do;
                                workDatabase2.m8560for();
                                try {
                                    Long m7486do = ((C3360mx) workDatabase2.mo4725break()).m7486do("next_job_scheduler_id");
                                    int intValue = m7486do != null ? m7486do.intValue() : 0;
                                    try {
                                        ((C3360mx) workDatabase2.mo4725break()).m7487if(new C3242kx("next_job_scheduler_id", intValue == Integer.MAX_VALUE ? 0 : intValue + 1));
                                        workDatabase2.m8561goto();
                                        try {
                                            workDatabase2.m8557case();
                                            i = (intValue >= 0 && intValue <= i4) ? intValue : 0;
                                            ((C3360mx) c3173jn.f13804do.mo4725break()).m7487if(new C3242kx("next_job_scheduler_id", 1));
                                        } catch (Throwable th) {
                                            th = th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        workDatabase2.m8557case();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                        throw th;
                    }
                    i = m8566do.f15871do;
                    if (m8566do == null) {
                        try {
                            C3792uG c3792uG = new C3792uG(tm.f3655do, i);
                            C3910wG c3910wG = (C3910wG) gm.f1178do.mo4726catch();
                            AbstractC3904wA abstractC3904wA = c3910wG.f16309do;
                            abstractC3904wA.m8562if();
                            abstractC3904wA.m8560for();
                            try {
                                c3910wG.f16310do.m6827try(c3792uG);
                                abstractC3904wA.m8561goto();
                                abstractC3904wA.m8557case();
                            } finally {
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            workDatabase.m8557case();
                            throw th;
                        }
                    }
                    m8710else(tm, i);
                    if (Build.VERSION.SDK_INT != 23 || (m8708for = m8708for(this.f16728do, this.f16727do, tm.f3655do)) == null) {
                        i2 = 0;
                    } else {
                        int indexOf = m8708for.indexOf(Integer.valueOf(i));
                        if (indexOf >= 0) {
                            m8708for.remove(indexOf);
                        }
                        if (m8708for.isEmpty()) {
                            i2 = 0;
                            gm.f1177do.getClass();
                            m7173do = c3173jn.m7173do(gm.f1177do.f8142if);
                        } else {
                            i2 = 0;
                            m7173do = ((Integer) m8708for.get(0)).intValue();
                        }
                        m8710else(tm, m7173do);
                    }
                    workDatabase.m8561goto();
                }
                workDatabase.m8557case();
                i3++;
                tmArr2 = tmArr;
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8710else(TM tm, int i) {
        JobScheduler jobScheduler = this.f16727do;
        JobInfo m8625do = this.f16729do.m8625do(tm, i);
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Scheduling work ID %s Job ID %s", tm.f3655do, Integer.valueOf(i));
        m2869for.mo2872do(new Throwable[0]);
        try {
            if (jobScheduler.schedule(m8625do) == 0) {
                AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                String.format("Unable to schedule work ID %s", tm.f3655do);
                m2869for2.mo2871case(new Throwable[0]);
                if (tm.f3656do && tm.f3658for == 1) {
                    tm.f3656do = false;
                    String.format("Scheduling a non-expedited job (work ID %s)", tm.f3655do);
                    AbstractC0614Xq.m2869for().mo2872do(new Throwable[0]);
                    m8710else(tm, i);
                }
            }
        } catch (IllegalStateException e) {
            ArrayList m8709new = m8709new(this.f16728do, jobScheduler);
            int size = m8709new != null ? m8709new.size() : 0;
            Locale locale = Locale.getDefault();
            Object[] objArr = new Object[3];
            objArr[0] = Integer.valueOf(size);
            GM gm = this.f16726do;
            objArr[1] = Integer.valueOf(((VM) gm.f1178do.mo4729final()).m2642try().size());
            Cdo cdo = gm.f1177do;
            int i2 = Build.VERSION.SDK_INT;
            int i3 = cdo.f8141for;
            if (i2 == 23) {
                i3 /= 2;
            }
            objArr[2] = Integer.valueOf(i3);
            String format = String.format(locale, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", objArr);
            AbstractC0614Xq.m2869for().mo2873if(new Throwable[0]);
            throw new IllegalStateException(format, e);
        } catch (Throwable th) {
            AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
            String.format("Unable to schedule %s", tm);
            m2869for3.mo2873if(th);
        }
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: if */
    public final boolean mo1457if() {
        return true;
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: try */
    public final void mo1459try(String str) {
        Context context = this.f16728do;
        JobScheduler jobScheduler = this.f16727do;
        ArrayList m8708for = m8708for(context, jobScheduler, str);
        if (m8708for == null || m8708for.isEmpty()) {
            return;
        }
        Iterator it = m8708for.iterator();
        while (it.hasNext()) {
            m8707do(jobScheduler, ((Integer) it.next()).intValue());
        }
        ((C3910wG) this.f16726do.f1178do.mo4726catch()).m8567if(str);
    }
}

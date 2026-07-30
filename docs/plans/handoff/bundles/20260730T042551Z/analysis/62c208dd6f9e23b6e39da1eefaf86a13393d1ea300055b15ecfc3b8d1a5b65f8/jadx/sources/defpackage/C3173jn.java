package defpackage;

import androidx.work.impl.WorkDatabase;

/* renamed from: jn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3173jn {

    /* renamed from: do, reason: not valid java name */
    public final WorkDatabase f13804do;

    public C3173jn(WorkDatabase workDatabase) {
        this.f13804do = workDatabase;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m7173do(int i) {
        int i2;
        synchronized (C3173jn.class) {
            WorkDatabase workDatabase = this.f13804do;
            workDatabase.m8560for();
            try {
                Long m7486do = ((C3360mx) workDatabase.mo4725break()).m7486do("next_job_scheduler_id");
                int intValue = m7486do != null ? m7486do.intValue() : 0;
                ((C3360mx) workDatabase.mo4725break()).m7487if(new C3242kx("next_job_scheduler_id", intValue == Integer.MAX_VALUE ? 0 : intValue + 1));
                workDatabase.m8561goto();
                i2 = (intValue >= 0 && intValue <= i) ? intValue : 0;
                ((C3360mx) this.f13804do.mo4725break()).m7487if(new C3242kx("next_job_scheduler_id", 1));
            } finally {
                workDatabase.m8557case();
            }
        }
        return i2;
    }
}

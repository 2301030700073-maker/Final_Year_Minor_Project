package defpackage;

import androidx.work.impl.WorkDatabase;
import defpackage.AbstractC3904wA;

/* renamed from: xM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3975xM extends AbstractC3904wA.Cif {
    @Override // defpackage.AbstractC3904wA.Cif
    /* renamed from: do */
    public final void mo8564do(C0519Tj c0519Tj) {
        c0519Tj.m2281do();
        try {
            int i = WorkDatabase.f8147do;
            c0519Tj.m2282for("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.f8148do) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            c0519Tj.m2283goto();
        } finally {
            c0519Tj.m2284if();
        }
    }
}

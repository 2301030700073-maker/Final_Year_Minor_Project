package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdGenerator {
    public final WorkDatabase workDatabase;

    public IdGenerator(WorkDatabase workDatabase, int i) {
        switch (i) {
            case 1:
                this.workDatabase = workDatabase;
                break;
            default:
                workDatabase.getClass();
                this.workDatabase = workDatabase;
                break;
        }
    }
}

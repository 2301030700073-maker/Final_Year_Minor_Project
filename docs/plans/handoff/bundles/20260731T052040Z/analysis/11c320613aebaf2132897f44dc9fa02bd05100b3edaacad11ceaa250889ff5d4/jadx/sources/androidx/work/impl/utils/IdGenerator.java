package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

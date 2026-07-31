package androidx.compose.runtime.snapshots;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StateRecord {
    public StateRecord next;
    public long snapshotId;

    public StateRecord(long j) {
        this.snapshotId = j;
    }

    public abstract void assign(StateRecord stateRecord);

    public abstract StateRecord create(long j);
}

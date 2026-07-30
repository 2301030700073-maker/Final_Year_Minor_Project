package androidx.compose.runtime.snapshots;

/* compiled from: Snapshot.kt */
/* loaded from: classes.dex */
public interface StateObject {
    StateRecord getFirstStateRecord();

    StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3);

    void prependStateRecord(StateRecord stateRecord);

    /* compiled from: Snapshot.kt */
    /* renamed from: androidx.compose.runtime.snapshots.StateObject$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static StateRecord $default$mergeRecords(StateObject stateObject, StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
            return null;
        }
    }
}

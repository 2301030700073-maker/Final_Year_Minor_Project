package androidx.compose.runtime;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParcelableSnapshotMutableState extends StateObjectImpl implements Parcelable, SnapshotMutableState {
    public static final Parcelable.Creator<ParcelableSnapshotMutableState> CREATOR = new ParcelableSnapshotMutableState$Companion$CREATOR$1();
    public SnapshotMutableStateImpl$StateStateRecord next;
    public final NeverEqualPolicy policy;

    public ParcelableSnapshotMutableState(Object obj, NeverEqualPolicy neverEqualPolicy) {
        this.policy = neverEqualPolicy;
        Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
        SnapshotMutableStateImpl$StateStateRecord snapshotMutableStateImpl$StateStateRecord = new SnapshotMutableStateImpl$StateStateRecord(currentSnapshot.getSnapshotId(), obj);
        if (!(currentSnapshot instanceof GlobalSnapshot)) {
            snapshotMutableStateImpl$StateStateRecord.next = new SnapshotMutableStateImpl$StateStateRecord(1L, obj);
        }
        this.next = snapshotMutableStateImpl$StateStateRecord;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord getFirstStateRecord() {
        return this.next;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public final NeverEqualPolicy getPolicy() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return ((SnapshotMutableStateImpl$StateStateRecord) SnapshotKt.readable(this.next, this)).value;
    }

    @Override // androidx.compose.runtime.snapshots.StateObjectImpl, androidx.compose.runtime.snapshots.StateObject
    public final StateRecord mergeRecords(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (this.policy.equivalent(((SnapshotMutableStateImpl$StateStateRecord) stateRecord2).value, ((SnapshotMutableStateImpl$StateStateRecord) stateRecord3).value)) {
            return stateRecord2;
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void prependStateRecord(StateRecord stateRecord) {
        stateRecord.getClass();
        this.next = (SnapshotMutableStateImpl$StateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.MutableState
    public final void setValue(Object obj) {
        Snapshot currentSnapshot;
        SnapshotMutableStateImpl$StateStateRecord snapshotMutableStateImpl$StateStateRecord = (SnapshotMutableStateImpl$StateStateRecord) SnapshotKt.current(this.next);
        if (this.policy.equivalent(snapshotMutableStateImpl$StateStateRecord.value, obj)) {
            return;
        }
        SnapshotMutableStateImpl$StateStateRecord snapshotMutableStateImpl$StateStateRecord2 = this.next;
        synchronized (SnapshotKt.lock) {
            currentSnapshot = SnapshotKt.currentSnapshot();
            ((SnapshotMutableStateImpl$StateStateRecord) SnapshotKt.overwritableRecord(snapshotMutableStateImpl$StateStateRecord2, this, currentSnapshot, snapshotMutableStateImpl$StateStateRecord)).value = obj;
        }
        SnapshotKt.notifyWrite(currentSnapshot, this);
    }

    public final String toString() {
        return "MutableState(value=" + ((SnapshotMutableStateImpl$StateStateRecord) SnapshotKt.current(this.next)).value + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeValue(getValue());
        NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE;
        NeverEqualPolicy neverEqualPolicy2 = this.policy;
        if (Intrinsics.areEqual(neverEqualPolicy2, neverEqualPolicy)) {
            i2 = 0;
        } else if (Intrinsics.areEqual(neverEqualPolicy2, NeverEqualPolicy.INSTANCE$3)) {
            i2 = 1;
        } else {
            if (!Intrinsics.areEqual(neverEqualPolicy2, NeverEqualPolicy.INSTANCE$1)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Only known types of MutableState's SnapshotMutationPolicy are supported");
                return;
            }
            i2 = 2;
        }
        parcel.writeInt(i2);
    }
}

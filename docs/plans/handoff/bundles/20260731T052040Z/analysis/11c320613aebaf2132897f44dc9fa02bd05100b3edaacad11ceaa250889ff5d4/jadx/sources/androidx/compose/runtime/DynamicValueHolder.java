package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DynamicValueHolder implements ValueHolder {
    public final ParcelableSnapshotMutableState state;

    public DynamicValueHolder(ParcelableSnapshotMutableState parcelableSnapshotMutableState) {
        this.state = parcelableSnapshotMutableState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DynamicValueHolder) && this.state == ((DynamicValueHolder) obj).state;
    }

    public final int hashCode() {
        return this.state.hashCode();
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object readValue(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        return this.state.getValue();
    }

    public final String toString() {
        return "DynamicValueHolder(state=" + this.state + ')';
    }
}

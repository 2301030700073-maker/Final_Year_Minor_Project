package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

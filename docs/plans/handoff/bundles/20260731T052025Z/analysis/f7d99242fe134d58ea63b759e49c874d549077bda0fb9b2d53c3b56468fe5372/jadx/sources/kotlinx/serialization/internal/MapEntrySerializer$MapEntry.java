package kotlinx.serialization.internal;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MapEntrySerializer$MapEntry implements Map.Entry, KMappedMarker {
    public final Object key;
    public final Object value;

    public MapEntrySerializer$MapEntry(Object obj, Object obj2) {
        this.key = obj;
        this.value = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MapEntrySerializer$MapEntry)) {
            return false;
        }
        MapEntrySerializer$MapEntry mapEntrySerializer$MapEntry = (MapEntrySerializer$MapEntry) obj;
        return Intrinsics.areEqual(this.key, mapEntrySerializer$MapEntry.key) && Intrinsics.areEqual(this.value, mapEntrySerializer$MapEntry.value);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.key;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.value;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return "MapEntry(key=" + this.key + ", value=" + this.value + ')';
    }
}

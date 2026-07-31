package androidx.lifecycle;

import androidx.lifecycle.LifecycleRegistry;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FastSafeIterableMap$Entry implements Map.Entry, KMappedMarker {
    public boolean isRemoved;
    public final Object key;
    public FastSafeIterableMap$Entry next;
    public FastSafeIterableMap$Entry prev;
    public final LifecycleRegistry.ObserverWithState value;

    public FastSafeIterableMap$Entry(LifecycleObserver lifecycleObserver, LifecycleRegistry.ObserverWithState observerWithState) {
        this.key = lifecycleObserver;
        this.value = observerWithState;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FastSafeIterableMap$Entry) {
            FastSafeIterableMap$Entry fastSafeIterableMap$Entry = (FastSafeIterableMap$Entry) obj;
            return Intrinsics.areEqual(this.key, fastSafeIterableMap$Entry.key) && this.value == fastSafeIterableMap$Entry.value;
        }
        return false;
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
        return this.value.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return "Entry(key=" + this.key + ", value=" + this.value + ")";
    }
}

package kotlin.collections;

import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableMapWithDefaultImpl implements Map, KMutableMap, KMappedMarker {
    public final EnumMap map;

    public MutableMapWithDefaultImpl(EnumMap enumMap, ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3) {
        this.map = enumMap;
    }

    @Override // java.util.Map
    public final void clear() {
        this.map.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.map.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.map.put((EnumMap) obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.map.size();
    }

    public final String toString() {
        return this.map.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.map.values();
    }
}

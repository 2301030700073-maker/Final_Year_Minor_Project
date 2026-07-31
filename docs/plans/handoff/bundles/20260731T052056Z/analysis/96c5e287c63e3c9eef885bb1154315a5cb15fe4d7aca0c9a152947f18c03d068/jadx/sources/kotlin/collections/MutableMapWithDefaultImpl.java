package kotlin.collections;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableMapWithDefaultImpl implements Map, KMutableMap, KMappedMarker {

    /* renamed from: default, reason: not valid java name */
    public final ForYouCardKt$$ExternalSyntheticLambda1 f17default;
    public final LinkedHashMap map;

    public MutableMapWithDefaultImpl(LinkedHashMap linkedHashMap, ForYouCardKt$$ExternalSyntheticLambda1 forYouCardKt$$ExternalSyntheticLambda1) {
        this.map = linkedHashMap;
        this.f17default = forYouCardKt$$ExternalSyntheticLambda1;
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
        return this.map.put(obj, obj2);
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

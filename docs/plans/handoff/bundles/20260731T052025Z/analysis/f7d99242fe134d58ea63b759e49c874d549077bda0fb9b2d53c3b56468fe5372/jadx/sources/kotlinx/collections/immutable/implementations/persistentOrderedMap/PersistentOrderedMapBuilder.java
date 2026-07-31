package kotlinx.collections.immutable.implementations.persistentOrderedMap;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.Map;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderEntries;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderKeys;
import kotlinx.collections.immutable.internal.EndOfChain;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedMapBuilder extends AbstractMutableMap implements PersistentMap.Builder, Map {
    public PersistentOrderedMap builtMap;
    public Object firstKey;
    public final PersistentHashMapBuilder hashMapBuilder;
    public Object lastKey;

    public PersistentOrderedMapBuilder(PersistentOrderedMap persistentOrderedMap) {
        this.builtMap = persistentOrderedMap;
        this.firstKey = persistentOrderedMap.firstKey;
        this.lastKey = persistentOrderedMap.lastKey;
        PersistentHashMap persistentHashMap = persistentOrderedMap.hashMap;
        persistentHashMap.getClass();
        this.hashMapBuilder = new PersistentHashMapBuilder(persistentHashMap);
    }

    @Override // kotlinx.collections.immutable.PersistentMap.Builder
    public final PersistentMap build() {
        PersistentOrderedMap persistentOrderedMap = this.builtMap;
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        if (persistentOrderedMap != null) {
            PersistentHashMap persistentHashMap = persistentHashMapBuilder.builtMap;
            return persistentOrderedMap;
        }
        PersistentHashMap persistentHashMap2 = persistentHashMapBuilder.builtMap;
        PersistentOrderedMap persistentOrderedMap2 = new PersistentOrderedMap(this.firstKey, this.lastKey, persistentHashMapBuilder.build());
        this.builtMap = persistentOrderedMap2;
        return persistentOrderedMap2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        if (!persistentHashMapBuilder.isEmpty()) {
            this.builtMap = null;
        }
        persistentHashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstKey = endOfChain;
        this.lastKey = endOfChain;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
            java.util.Map map = (java.util.Map) obj;
            if (persistentHashMapBuilder.size() == map.size()) {
                if (map instanceof PersistentOrderedMap) {
                    return persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMap) obj).hashMap.node, PersistentOrderedMap$equals$1.INSTANCE$4);
                }
                if (map instanceof PersistentOrderedMapBuilder) {
                    return persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMapBuilder) obj).hashMapBuilder.node, PersistentOrderedMap$equals$1.INSTANCE$5);
                }
                if (map instanceof PersistentHashMap) {
                    return persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMap) obj).node, PersistentOrderedMap$equals$1.INSTANCE$6);
                }
                if (map instanceof PersistentHashMapBuilder) {
                    return persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMapBuilder) obj).node, PersistentOrderedMap$equals$1.INSTANCE$7);
                }
                if (getSize() != map.size()) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                    return false;
                }
                if (map.isEmpty()) {
                    return true;
                }
                Iterator it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (!CacheControl.Companion.containsEntry$kotlinx_collections_immutable(this, (Map.Entry) it.next())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        LinkedValue linkedValue = (LinkedValue) this.hashMapBuilder.get(obj);
        if (linkedValue != null) {
            return linkedValue.value;
        }
        return null;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getEntries() {
        return new PersistentHashMapBuilderEntries(this, 1);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getKeys() {
        return new PersistentHashMapBuilderKeys(this, 1);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return Map.CC.$default$getOrDefault(this, obj, obj2);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final int getSize() {
        return this.hashMapBuilder.size();
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Collection getValues() {
        return new MapBuilderValues(3, this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        LinkedValue linkedValue = (LinkedValue) persistentHashMapBuilder.get(obj);
        if (linkedValue != null) {
            Object obj3 = linkedValue.value;
            if (obj3 == obj2) {
                return obj2;
            }
            this.builtMap = null;
            persistentHashMapBuilder.put(obj, new LinkedValue(obj2, linkedValue.previous, linkedValue.next));
            return obj3;
        }
        this.builtMap = null;
        boolean isEmpty = isEmpty();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        if (isEmpty) {
            this.firstKey = obj;
            this.lastKey = obj;
            persistentHashMapBuilder.put(obj, new LinkedValue(obj2, endOfChain, endOfChain));
            return null;
        }
        Object obj4 = this.lastKey;
        Object obj5 = persistentHashMapBuilder.get(obj4);
        obj5.getClass();
        LinkedValue linkedValue2 = (LinkedValue) obj5;
        persistentHashMapBuilder.put(obj4, new LinkedValue(linkedValue2.value, linkedValue2.previous, obj));
        persistentHashMapBuilder.put(obj, new LinkedValue(obj2, obj4, endOfChain));
        this.lastKey = obj;
        return null;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        LinkedValue linkedValue = (LinkedValue) persistentHashMapBuilder.remove(obj);
        if (linkedValue == null) {
            return null;
        }
        Object obj2 = linkedValue.next;
        Object obj3 = linkedValue.previous;
        this.builtMap = null;
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        if (obj3 != endOfChain) {
            Object obj4 = persistentHashMapBuilder.get(obj3);
            obj4.getClass();
            LinkedValue linkedValue2 = (LinkedValue) obj4;
            persistentHashMapBuilder.put(obj3, new LinkedValue(linkedValue2.value, linkedValue2.previous, obj2));
        } else {
            this.firstKey = obj2;
        }
        if (obj2 != endOfChain) {
            Object obj5 = persistentHashMapBuilder.get(obj2);
            obj5.getClass();
            LinkedValue linkedValue3 = (LinkedValue) obj5;
            persistentHashMapBuilder.put(obj2, new LinkedValue(linkedValue3.value, obj3, linkedValue3.next));
        } else {
            this.lastKey = obj3;
        }
        return linkedValue.value;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        LinkedValue linkedValue = (LinkedValue) this.hashMapBuilder.get(obj);
        if (linkedValue == null || !Intrinsics.areEqual(linkedValue.value, obj2)) {
            return false;
        }
        remove(obj);
        return true;
    }
}

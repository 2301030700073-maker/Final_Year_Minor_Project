package kotlinx.collections.immutable.implementations.immutableMap;

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
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMapBuilder;
import kotlinx.collections.immutable.internal.DeltaCounter;
import kotlinx.collections.immutable.internal.EndOfChain;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilder extends AbstractMutableMap implements PersistentMap.Builder, Map {
    public PersistentHashMap builtMap;
    public int modCount;
    public TrieNode node;
    public Object operationResult;
    public EndOfChain ownership;
    public int size;

    public PersistentHashMapBuilder(PersistentHashMap persistentHashMap) {
        persistentHashMap.getClass();
        this.builtMap = persistentHashMap;
        this.ownership = new EndOfChain();
        this.node = persistentHashMap.node;
        this.size = persistentHashMap.getSize();
    }

    @Override // kotlinx.collections.immutable.PersistentMap.Builder
    public final PersistentHashMap build() {
        PersistentHashMap persistentHashMap = this.builtMap;
        if (persistentHashMap != null) {
            return persistentHashMap;
        }
        PersistentHashMap persistentHashMap2 = new PersistentHashMap(this.node, getSize());
        this.builtMap = persistentHashMap2;
        this.ownership = new EndOfChain();
        return persistentHashMap2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        TrieNode trieNode = TrieNode.EMPTY;
        trieNode.getClass();
        setNode$kotlinx_collections_immutable(trieNode);
        setSize(0);
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
        return this.node.containsKey(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (this.size == map.size()) {
                if (map instanceof PersistentHashMap) {
                    return this.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMap) obj).node, PersistentHashMap$equals$1.INSTANCE$4);
                }
                if (map instanceof PersistentHashMapBuilder) {
                    return this.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMapBuilder) obj).node, PersistentHashMap$equals$1.INSTANCE$5);
                }
                if (map instanceof PersistentOrderedMap) {
                    return this.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMap) obj).hashMap.node, PersistentHashMap$equals$1.INSTANCE$6);
                }
                if (map instanceof PersistentOrderedMapBuilder) {
                    return this.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMapBuilder) obj).hashMapBuilder.node, PersistentHashMap$equals$1.INSTANCE$7);
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
        return this.node.get(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getEntries() {
        return new PersistentHashMapBuilderEntries(this, 0);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getKeys() {
        return new PersistentHashMapBuilderKeys(this, 0);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return Map.CC.$default$getOrDefault(this, obj, obj2);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Collection getValues() {
        return new MapBuilderValues(2, this);
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
        this.operationResult = null;
        setNode$kotlinx_collections_immutable(this.node.mutablePut(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this));
        return this.operationResult;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(java.util.Map map) {
        map.getClass();
        if (map.isEmpty()) {
            return;
        }
        PersistentHashMap persistentHashMap = null;
        PersistentHashMap persistentHashMap2 = map instanceof PersistentHashMap ? (PersistentHashMap) map : null;
        if (persistentHashMap2 == null) {
            PersistentHashMapBuilder persistentHashMapBuilder = map instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) map : null;
            if (persistentHashMapBuilder != null) {
                persistentHashMap = persistentHashMapBuilder.build();
            }
        } else {
            persistentHashMap = persistentHashMap2;
        }
        if (persistentHashMap == null) {
            super.putAll(map);
            return;
        }
        DeltaCounter deltaCounter = new DeltaCounter();
        deltaCounter.count = 0;
        int size = getSize();
        TrieNode trieNode = this.node;
        TrieNode trieNode2 = persistentHashMap.node;
        trieNode2.getClass();
        setNode$kotlinx_collections_immutable(trieNode.mutablePutAll(trieNode2, 0, deltaCounter, this));
        int size2 = (persistentHashMap.getSize() + size) - deltaCounter.count;
        if (size != size2) {
            setSize(size2);
        }
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int size = getSize();
        TrieNode mutableRemove = this.node.mutableRemove(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (mutableRemove == null) {
            mutableRemove = TrieNode.EMPTY;
            mutableRemove.getClass();
        }
        setNode$kotlinx_collections_immutable(mutableRemove);
        return size != getSize();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final void setNode$kotlinx_collections_immutable(TrieNode trieNode) {
        trieNode.getClass();
        if (trieNode != this.node) {
            this.node = trieNode;
            this.builtMap = null;
        }
    }

    public final void setSize(int i) {
        this.size = i;
        this.modCount++;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        this.operationResult = null;
        TrieNode mutableRemove = this.node.mutableRemove(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (mutableRemove == null) {
            mutableRemove = TrieNode.EMPTY;
            mutableRemove.getClass();
        }
        setNode$kotlinx_collections_immutable(mutableRemove);
        return this.operationResult;
    }
}

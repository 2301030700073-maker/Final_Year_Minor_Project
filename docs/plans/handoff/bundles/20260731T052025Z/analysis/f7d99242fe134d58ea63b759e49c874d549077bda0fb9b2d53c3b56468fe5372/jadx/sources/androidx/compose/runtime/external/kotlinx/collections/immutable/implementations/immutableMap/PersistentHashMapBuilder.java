package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import j$.util.Map;
import java.util.Collection;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.builders.MapBuilderValues;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PersistentHashMapBuilder extends AbstractMutableMap implements Map {
    public int modCount;
    public TrieNode node;
    public Object operationResult;
    public EndOfChain ownership;
    public int size;

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.node = TrieNode.EMPTY;
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
    public boolean containsKey(Object obj) {
        return this.node.containsKey(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return this.node.get(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getEntries() {
        return new PersistentHashMapBuilderKeys(1, this);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getKeys() {
        return new PersistentHashMapBuilderKeys(0, this);
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
        return new MapBuilderValues(1, this);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.operationResult = null;
        this.node = this.node.mutablePut(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        return this.operationResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap] */
    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(java.util.Map map) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = null;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = map instanceof PersistentHashMap ? (PersistentHashMap) map : null;
        if (persistentCompositionLocalHashMap2 == null) {
            PersistentHashMapBuilder persistentHashMapBuilder = map instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) map : null;
            if (persistentHashMapBuilder != null) {
                persistentCompositionLocalHashMap = ((PersistentCompositionLocalHashMap.Builder) persistentHashMapBuilder).build$1();
            }
        } else {
            persistentCompositionLocalHashMap = persistentCompositionLocalHashMap2;
        }
        if (persistentCompositionLocalHashMap == null) {
            super.putAll(map);
            return;
        }
        DeltaCounter deltaCounter = new DeltaCounter();
        deltaCounter.count = 0;
        int i = this.size;
        TrieNode trieNode = this.node;
        TrieNode trieNode2 = persistentCompositionLocalHashMap.node;
        trieNode2.getClass();
        this.node = trieNode.mutablePutAll(trieNode2, 0, deltaCounter, this);
        int i2 = (persistentCompositionLocalHashMap.size + i) - deltaCounter.count;
        if (i != i2) {
            setSize(i2);
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
        }
        this.node = mutableRemove;
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

    public final void setSize(int i) {
        this.size = i;
        this.modCount++;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        this.operationResult = null;
        TrieNode mutableRemove = this.node.mutableRemove(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (mutableRemove == null) {
            mutableRemove = TrieNode.EMPTY;
        }
        this.node = mutableRemove;
        return this.operationResult;
    }
}

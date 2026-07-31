package kotlinx.collections.immutable.implementations.persistentOrderedMap;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractMap;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import kotlinx.collections.immutable.internal.EndOfChain;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedMap extends AbstractMap implements PersistentMap {
    public static final PersistentOrderedMap EMPTY;
    public final Object firstKey;
    public final PersistentHashMap hashMap;
    public final Object lastKey;

    static {
        PersistentHashMap persistentHashMap = PersistentHashMap.EMPTY;
        persistentHashMap.getClass();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedMap(endOfChain, endOfChain, persistentHashMap);
    }

    public PersistentOrderedMap(Object obj, Object obj2, PersistentHashMap persistentHashMap) {
        persistentHashMap.getClass();
        this.firstKey = obj;
        this.lastKey = obj2;
        this.hashMap = persistentHashMap;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (getSize() != map.size()) {
            return false;
        }
        boolean z = map instanceof PersistentOrderedMap;
        PersistentHashMap persistentHashMap = this.hashMap;
        return z ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMap) obj).hashMap.node, PersistentOrderedMap$equals$1.INSTANCE) : map instanceof PersistentOrderedMapBuilder ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedMapBuilder) obj).hashMapBuilder.node, PersistentOrderedMap$equals$1.INSTANCE$1) : map instanceof PersistentHashMap ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMap) obj).node, PersistentOrderedMap$equals$1.INSTANCE$2) : map instanceof PersistentHashMapBuilder ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentHashMapBuilder) obj).node, PersistentOrderedMap$equals$1.INSTANCE$3) : super.equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        LinkedValue linkedValue = (LinkedValue) this.hashMap.get(obj);
        if (linkedValue != null) {
            return linkedValue.value;
        }
        return null;
    }

    @Override // kotlin.collections.AbstractMap
    public final Set getEntries() {
        return new PersistentOrderedMapKeys(this, 1);
    }

    @Override // kotlin.collections.AbstractMap
    public final Set getKeys() {
        return new PersistentOrderedMapKeys(this, 0);
    }

    @Override // kotlin.collections.AbstractMap
    public final int getSize() {
        return this.hashMap.size();
    }

    @Override // kotlin.collections.AbstractMap
    public final Collection getValues() {
        return new MatcherMatchResult$groups$1(3, this);
    }
}

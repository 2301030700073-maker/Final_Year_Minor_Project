package kotlinx.collections.immutable.implementations.persistentOrderedSet;

import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractSet;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import kotlinx.collections.immutable.internal.EndOfChain;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedSet extends AbstractSet implements ImmutableSet {
    public static final PersistentOrderedSet EMPTY;
    public final Object firstElement;
    public final PersistentHashMap hashMap;
    public final Object lastElement;

    static {
        PersistentHashMap persistentHashMap = PersistentHashMap.EMPTY;
        persistentHashMap.getClass();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedSet(endOfChain, endOfChain, persistentHashMap);
    }

    public PersistentOrderedSet(Object obj, Object obj2, PersistentHashMap persistentHashMap) {
        persistentHashMap.getClass();
        this.firstElement = obj;
        this.lastElement = obj2;
        this.hashMap = persistentHashMap;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (getSize() != set.size()) {
            return false;
        }
        boolean z = set instanceof PersistentOrderedSet;
        PersistentHashMap persistentHashMap = this.hashMap;
        return z ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedSet) obj).hashMap.node, new KoinModuleKt$$ExternalSyntheticLambda1(22)) : set instanceof PersistentOrderedSetBuilder ? persistentHashMap.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedSetBuilder) obj).hashMapBuilder.node, new KoinModuleKt$$ExternalSyntheticLambda1(23)) : super.equals(obj);
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.hashMap.getSize();
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentOrderedSetIterator(this.firstElement, this.hashMap, 0);
    }
}

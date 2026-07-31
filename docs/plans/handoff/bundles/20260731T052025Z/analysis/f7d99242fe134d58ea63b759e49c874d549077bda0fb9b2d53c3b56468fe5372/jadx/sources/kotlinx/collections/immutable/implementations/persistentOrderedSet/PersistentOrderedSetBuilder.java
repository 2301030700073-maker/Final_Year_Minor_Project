package kotlinx.collections.immutable.implementations.persistentOrderedSet;

import com.fsck.k9.view.KoinModuleKt$$ExternalSyntheticLambda1;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import kotlinx.collections.immutable.internal.EndOfChain;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentOrderedSetBuilder extends AbstractMutableSet implements Collection, KMutableCollection {
    public PersistentOrderedSet builtSet;
    public Object firstElement;
    public final PersistentHashMapBuilder hashMapBuilder;
    public Object lastElement;

    public PersistentOrderedSetBuilder(PersistentOrderedSet persistentOrderedSet) {
        persistentOrderedSet.getClass();
        this.builtSet = persistentOrderedSet;
        this.firstElement = persistentOrderedSet.firstElement;
        this.lastElement = persistentOrderedSet.lastElement;
        PersistentHashMap persistentHashMap = persistentOrderedSet.hashMap;
        persistentHashMap.getClass();
        this.hashMapBuilder = new PersistentHashMapBuilder(persistentHashMap);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        if (persistentHashMapBuilder.containsKey(obj)) {
            return false;
        }
        this.builtSet = null;
        boolean isEmpty = isEmpty();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        if (isEmpty) {
            this.firstElement = obj;
            this.lastElement = obj;
            persistentHashMapBuilder.put(obj, new Links(endOfChain, endOfChain));
            return true;
        }
        Object obj2 = persistentHashMapBuilder.get(this.lastElement);
        obj2.getClass();
        persistentHashMapBuilder.put(this.lastElement, new Links(((Links) obj2).previous, obj));
        persistentHashMapBuilder.put(obj, new Links(this.lastElement, endOfChain));
        this.lastElement = obj;
        return true;
    }

    public final PersistentOrderedSet build() {
        PersistentOrderedSet persistentOrderedSet = this.builtSet;
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        if (persistentOrderedSet != null) {
            PersistentHashMap persistentHashMap = persistentHashMapBuilder.builtMap;
            return persistentOrderedSet;
        }
        PersistentHashMap persistentHashMap2 = persistentHashMapBuilder.builtMap;
        PersistentOrderedSet persistentOrderedSet2 = new PersistentOrderedSet(this.firstElement, this.lastElement, persistentHashMapBuilder.build());
        this.builtSet = persistentOrderedSet2;
        return persistentOrderedSet2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        if (!persistentHashMapBuilder.isEmpty()) {
            this.builtSet = null;
        }
        persistentHashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstElement = endOfChain;
        this.lastElement = endOfChain;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
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
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        return z ? persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedSet) obj).hashMap.node, new KoinModuleKt$$ExternalSyntheticLambda1(24)) : set instanceof PersistentOrderedSetBuilder ? persistentHashMapBuilder.node.equalsWith$kotlinx_collections_immutable(((PersistentOrderedSetBuilder) obj).hashMapBuilder.node, new KoinModuleKt$$ExternalSyntheticLambda1(25)) : super.equals(obj);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int getSize() {
        return this.hashMapBuilder.getSize();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentOrderedSetMutableIterator(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.hashMapBuilder;
        Links links = (Links) persistentHashMapBuilder.remove(obj);
        if (links == null) {
            return false;
        }
        Object obj2 = links.next;
        Object obj3 = links.previous;
        this.builtSet = null;
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        if (obj3 != endOfChain) {
            Object obj4 = persistentHashMapBuilder.get(obj3);
            obj4.getClass();
            persistentHashMapBuilder.put(obj3, new Links(((Links) obj4).previous, obj2));
        } else {
            this.firstElement = obj2;
        }
        if (obj2 == endOfChain) {
            this.lastElement = obj3;
            return true;
        }
        Object obj5 = persistentHashMapBuilder.get(obj2);
        obj5.getClass();
        persistentHashMapBuilder.put(obj2, new Links(obj3, ((Links) obj5).next));
        return true;
    }
}

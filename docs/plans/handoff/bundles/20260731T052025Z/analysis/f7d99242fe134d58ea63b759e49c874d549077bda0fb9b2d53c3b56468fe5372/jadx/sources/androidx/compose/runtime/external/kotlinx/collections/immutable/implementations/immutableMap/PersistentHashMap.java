package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import java.util.Collection;
import java.util.Set;
import kotlin.collections.AbstractMap;
import kotlin.text.MatcherMatchResult$groups$1;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PersistentHashMap extends AbstractMap {
    public static final PersistentHashMap EMPTY = new PersistentHashMap(TrieNode.EMPTY, 0);
    public final TrieNode node;
    public final int size;

    public PersistentHashMap(TrieNode trieNode, int i) {
        this.node = trieNode;
        this.size = i;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.node.containsKey(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return this.node.get(obj != null ? obj.hashCode() : 0, 0, obj);
    }

    @Override // kotlin.collections.AbstractMap
    public final Set getEntries() {
        return new PersistentHashMapKeys(this, 1);
    }

    @Override // kotlin.collections.AbstractMap
    public final Set getKeys() {
        return new PersistentHashMapKeys(this, 0);
    }

    @Override // kotlin.collections.AbstractMap
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractMap
    public final Collection getValues() {
        return new MatcherMatchResult$groups$1(1, this);
    }

    public final PersistentHashMap put(Object obj, Links links) {
        PriorityQueue put = this.node.put(obj != null ? obj.hashCode() : 0, 0, obj, links);
        return put == null ? this : new PersistentHashMap((TrieNode) put.array, this.size + put.size);
    }
}

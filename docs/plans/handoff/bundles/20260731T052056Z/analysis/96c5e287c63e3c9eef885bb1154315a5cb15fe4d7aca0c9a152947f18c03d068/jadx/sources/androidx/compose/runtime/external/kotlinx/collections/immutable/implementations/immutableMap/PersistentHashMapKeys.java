package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.AbstractSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersistentHashMapKeys extends AbstractSet implements ImmutableSet {
    public final /* synthetic */ int $r8$classId;
    public final PersistentHashMap map;

    public /* synthetic */ PersistentHashMapKeys(PersistentHashMap persistentHashMap, int i) {
        this.$r8$classId = i;
        this.map = persistentHashMap;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        PersistentHashMap persistentHashMap = this.map;
        switch (i) {
            case 0:
                return persistentHashMap.containsKey(obj);
            default:
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object obj2 = persistentHashMap.get(entry.getKey());
                    if (obj2 != null) {
                        return obj2.equals(entry.getValue());
                    }
                    if (entry.getValue() == null && persistentHashMap.containsKey(entry.getKey())) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        int i = this.$r8$classId;
        PersistentHashMap persistentHashMap = this.map;
        switch (i) {
        }
        return persistentHashMap.size;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i = this.$r8$classId;
        PersistentHashMap persistentHashMap = this.map;
        switch (i) {
            case 0:
                TrieNode trieNode = persistentHashMap.node;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
                for (int i2 = 0; i2 < 8; i2++) {
                    trieNodeBaseIteratorArr[i2] = new TrieNodeKeysIterator(0);
                }
                return new PersistentHashMapKeysIterator(trieNode, trieNodeBaseIteratorArr);
            default:
                TrieNode trieNode2 = persistentHashMap.node;
                TrieNodeBaseIterator[] trieNodeBaseIteratorArr2 = new TrieNodeBaseIterator[8];
                for (int i3 = 0; i3 < 8; i3++) {
                    trieNodeBaseIteratorArr2[i3] = new TrieNodeKeysIterator(1);
                }
                return new PersistentHashMapKeysIterator(trieNode2, trieNodeBaseIteratorArr2);
        }
    }
}

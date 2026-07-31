package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PersistentHashMapBuilderBaseIterator extends PersistentHashMapBaseIterator {
    public final PersistentHashMapBuilder builder;
    public int expectedModCount;
    public Object lastIteratedKey;
    public boolean nextWasInvoked;

    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder persistentHashMapBuilder, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.node, trieNodeBaseIteratorArr);
        this.builder = persistentHashMapBuilder;
        this.expectedModCount = persistentHashMapBuilder.modCount;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final Object next() {
        if (this.builder.modCount != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
        if (!this.hasNext) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        TrieNodeBaseIterator trieNodeBaseIterator = this.path[this.pathLastIndex];
        this.lastIteratedKey = trieNodeBaseIterator.buffer[trieNodeBaseIterator.index];
        this.nextWasInvoked = true;
        return super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final void remove() {
        if (!this.nextWasInvoked) {
            Gson$$ExternalSyntheticBUOutline0.m();
            return;
        }
        boolean z = this.hasNext;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        if (!z) {
            TypeIntrinsics.asMutableMap(persistentHashMapBuilder).remove(this.lastIteratedKey);
        } else {
            if (!z) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return;
            }
            TrieNodeBaseIterator trieNodeBaseIterator = this.path[this.pathLastIndex];
            Object obj = trieNodeBaseIterator.buffer[trieNodeBaseIterator.index];
            TypeIntrinsics.asMutableMap(persistentHashMapBuilder).remove(this.lastIteratedKey);
            resetPath(obj != null ? obj.hashCode() : 0, persistentHashMapBuilder.node, obj, 0);
        }
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = persistentHashMapBuilder.modCount;
    }

    public final void resetPath(int i, TrieNode trieNode, Object obj, int i2) {
        int i3 = i2 * 5;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.path;
        if (i3 <= 30) {
            int indexSegment = 1 << Room.indexSegment(i, i3);
            if (trieNode.hasEntryAt$runtime(indexSegment)) {
                trieNodeBaseIteratorArr[i2].reset(trieNode.buffer, Integer.bitCount(trieNode.dataMap) * 2, trieNode.entryKeyIndex$runtime(indexSegment));
                this.pathLastIndex = i2;
                return;
            } else {
                int nodeIndex$runtime = trieNode.nodeIndex$runtime(indexSegment);
                TrieNode nodeAtIndex$runtime = trieNode.nodeAtIndex$runtime(nodeIndex$runtime);
                trieNodeBaseIteratorArr[i2].reset(trieNode.buffer, Integer.bitCount(trieNode.dataMap) * 2, nodeIndex$runtime);
                resetPath(i, nodeAtIndex$runtime, obj, i2 + 1);
                return;
            }
        }
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i2];
        Object[] objArr = trieNode.buffer;
        trieNodeBaseIterator.reset(objArr, objArr.length, 0);
        while (true) {
            TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i2];
            if (Intrinsics.areEqual(trieNodeBaseIterator2.buffer[trieNodeBaseIterator2.index], obj)) {
                this.pathLastIndex = i2;
                return;
            } else {
                trieNodeBaseIteratorArr[i2].index += 2;
            }
        }
    }
}

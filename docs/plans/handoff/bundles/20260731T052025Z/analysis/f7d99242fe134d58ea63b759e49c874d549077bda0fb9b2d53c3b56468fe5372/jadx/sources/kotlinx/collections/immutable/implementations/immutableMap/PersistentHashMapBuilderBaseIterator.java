package kotlinx.collections.immutable.implementations.immutableMap;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PersistentHashMapBuilderBaseIterator extends PersistentHashMapBaseIterator {
    public final PersistentHashMapBuilder builder;
    public int expectedModCount;
    public Object lastIteratedKey;
    public boolean nextWasInvoked;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder persistentHashMapBuilder, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.node, trieNodeBaseIteratorArr);
        persistentHashMapBuilder.getClass();
        this.builder = persistentHashMapBuilder;
        this.expectedModCount = persistentHashMapBuilder.modCount;
    }

    @Override // kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final Object next() {
        if (this.builder.modCount != this.expectedModCount) {
            StreamSharing$$ExternalSyntheticLambda0.m();
            return null;
        }
        if (!this.hasNext) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        TrieNodeBaseIterator trieNodeBaseIterator = ((TrieNodeBaseIterator[]) this.path)[this.pathLastIndex];
        this.lastIteratedKey = trieNodeBaseIterator.buffer[trieNodeBaseIterator.index];
        this.nextWasInvoked = true;
        return super.next();
    }

    @Override // kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final void remove() {
        PersistentHashMapBuilderBaseIterator persistentHashMapBuilderBaseIterator;
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
        boolean z = this.hasNext;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        if (!z) {
            persistentHashMapBuilderBaseIterator = this;
            TypeIntrinsics.asMutableMap(persistentHashMapBuilder).remove(persistentHashMapBuilderBaseIterator.lastIteratedKey);
        } else {
            if (!z) {
                Regex$$ExternalSyntheticBUOutline0.m990m();
                return;
            }
            TrieNodeBaseIterator trieNodeBaseIterator = ((TrieNodeBaseIterator[]) this.path)[this.pathLastIndex];
            Object obj = trieNodeBaseIterator.buffer[trieNodeBaseIterator.index];
            TypeIntrinsics.asMutableMap(persistentHashMapBuilder).remove(this.lastIteratedKey);
            int hashCode = obj != null ? obj.hashCode() : 0;
            TrieNode trieNode = persistentHashMapBuilder.node;
            Object obj2 = this.lastIteratedKey;
            persistentHashMapBuilderBaseIterator = this;
            persistentHashMapBuilderBaseIterator.resetPath(hashCode, trieNode, obj, 0, obj2 != null ? obj2.hashCode() : 0, true);
        }
        persistentHashMapBuilderBaseIterator.lastIteratedKey = null;
        persistentHashMapBuilderBaseIterator.nextWasInvoked = false;
        persistentHashMapBuilderBaseIterator.expectedModCount = persistentHashMapBuilder.modCount;
    }

    public final void resetPath(int i, TrieNode trieNode, Object obj, int i2, int i3, boolean z) {
        int i4;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = (TrieNodeBaseIterator[]) this.path;
        int i5 = i2 * 5;
        if (i5 <= 30) {
            int indexSegment = 1 << ByteStreamsKt.indexSegment(i, i5);
            if (!trieNode.hasEntryAt$kotlinx_collections_immutable(indexSegment)) {
                int nodeIndex$kotlinx_collections_immutable = trieNode.nodeIndex$kotlinx_collections_immutable(indexSegment);
                TrieNode nodeAtIndex$kotlinx_collections_immutable = trieNode.nodeAtIndex$kotlinx_collections_immutable(nodeIndex$kotlinx_collections_immutable);
                TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i2];
                Object[] objArr = trieNode.buffer;
                int bitCount = Integer.bitCount(trieNode.dataMap) * 2;
                trieNodeBaseIterator.getClass();
                objArr.getClass();
                trieNodeBaseIterator.buffer = objArr;
                trieNodeBaseIterator.dataSize = bitCount;
                trieNodeBaseIterator.index = nodeIndex$kotlinx_collections_immutable;
                resetPath(i, nodeAtIndex$kotlinx_collections_immutable, obj, i2 + 1, i3, z);
                return;
            }
            int entryKeyIndex$kotlinx_collections_immutable = trieNode.entryKeyIndex$kotlinx_collections_immutable(indexSegment);
            if (indexSegment == (z ? 1 << ByteStreamsKt.indexSegment(i3, i5) : 0) && i2 < (i4 = this.pathLastIndex)) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i4];
                Object[] objArr2 = trieNode.buffer;
                Object[] objArr3 = {objArr2[entryKeyIndex$kotlinx_collections_immutable], objArr2[entryKeyIndex$kotlinx_collections_immutable + 1]};
                trieNodeBaseIterator2.getClass();
                trieNodeBaseIterator2.buffer = objArr3;
                trieNodeBaseIterator2.dataSize = 2;
                trieNodeBaseIterator2.index = 0;
                return;
            }
            TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i2];
            Object[] objArr4 = trieNode.buffer;
            int bitCount2 = Integer.bitCount(trieNode.dataMap) * 2;
            trieNodeBaseIterator3.getClass();
            objArr4.getClass();
            trieNodeBaseIterator3.buffer = objArr4;
            trieNodeBaseIterator3.dataSize = bitCount2;
            trieNodeBaseIterator3.index = entryKeyIndex$kotlinx_collections_immutable;
            this.pathLastIndex = i2;
            return;
        }
        TrieNodeBaseIterator trieNodeBaseIterator4 = trieNodeBaseIteratorArr[i2];
        Object[] objArr5 = trieNode.buffer;
        int length = objArr5.length;
        trieNodeBaseIterator4.getClass();
        trieNodeBaseIterator4.buffer = objArr5;
        trieNodeBaseIterator4.dataSize = length;
        trieNodeBaseIterator4.index = 0;
        while (true) {
            TrieNodeBaseIterator trieNodeBaseIterator5 = trieNodeBaseIteratorArr[i2];
            if (Intrinsics.areEqual(trieNodeBaseIterator5.buffer[trieNodeBaseIterator5.index], obj)) {
                this.pathLastIndex = i2;
                return;
            } else {
                trieNodeBaseIteratorArr[i2].index += 2;
            }
        }
    }
}

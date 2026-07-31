package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.Cookie;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            Arrangement$$ExternalSyntheticLambda0.m();
            return null;
        }
        if (!this.hasNext) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
            Node$$ExternalSyntheticBUOutline0.m();
            return;
        }
        boolean z = this.hasNext;
        PersistentHashMapBuilder persistentHashMapBuilder = this.builder;
        if (!z) {
            TypeIntrinsics.asMutableMap(persistentHashMapBuilder).remove(this.lastIteratedKey);
        } else {
            if (!z) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
            int indexSegment = 1 << Cookie.Companion.indexSegment(i, i3);
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

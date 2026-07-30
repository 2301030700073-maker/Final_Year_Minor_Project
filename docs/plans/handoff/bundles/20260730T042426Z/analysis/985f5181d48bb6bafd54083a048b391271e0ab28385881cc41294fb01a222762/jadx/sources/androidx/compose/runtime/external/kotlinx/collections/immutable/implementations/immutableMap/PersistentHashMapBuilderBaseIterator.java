package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: PersistentHashMapBuilderContentIterators.kt */
/* loaded from: classes.dex */
public class PersistentHashMapBuilderBaseIterator extends PersistentHashMapBaseIterator implements Iterator, KMappedMarker {
    private final PersistentHashMapBuilder builder;
    private int expectedModCount;
    private Object lastIteratedKey;
    private boolean nextWasInvoked;

    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder persistentHashMapBuilder, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.getNode$runtime_release(), trieNodeBaseIteratorArr);
        this.builder = persistentHashMapBuilder;
        this.expectedModCount = persistentHashMapBuilder.getModCount$runtime_release();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public Object next() {
        checkForComodification();
        this.lastIteratedKey = currentKey();
        this.nextWasInvoked = true;
        return super.next();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        if (hasNext()) {
            Object currentKey = currentKey();
            TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
            resetPath(currentKey != null ? currentKey.hashCode() : 0, this.builder.getNode$runtime_release(), currentKey, 0);
        } else {
            TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
        }
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getModCount$runtime_release();
    }

    public final void setValue(Object obj, Object obj2) {
        if (this.builder.containsKey(obj)) {
            if (hasNext()) {
                Object currentKey = currentKey();
                this.builder.put(obj, obj2);
                resetPath(currentKey != null ? currentKey.hashCode() : 0, this.builder.getNode$runtime_release(), currentKey, 0);
            } else {
                this.builder.put(obj, obj2);
            }
            this.expectedModCount = this.builder.getModCount$runtime_release();
        }
    }

    private final void resetPath(int i, TrieNode trieNode, Object obj, int i2) {
        int i3 = i2 * 5;
        if (i3 > 30) {
            getPath()[i2].reset(trieNode.getBuffer$runtime_release(), trieNode.getBuffer$runtime_release().length, 0);
            while (!Intrinsics.areEqual(getPath()[i2].currentKey(), obj)) {
                getPath()[i2].moveToNextKey();
            }
            setPathLastIndex(i2);
            return;
        }
        int indexSegment = 1 << TrieNodeKt.indexSegment(i, i3);
        if (trieNode.hasEntryAt$runtime_release(indexSegment)) {
            getPath()[i2].reset(trieNode.getBuffer$runtime_release(), trieNode.entryCount$runtime_release() * 2, trieNode.entryKeyIndex$runtime_release(indexSegment));
            setPathLastIndex(i2);
        } else {
            int nodeIndex$runtime_release = trieNode.nodeIndex$runtime_release(indexSegment);
            TrieNode nodeAtIndex$runtime_release = trieNode.nodeAtIndex$runtime_release(nodeIndex$runtime_release);
            getPath()[i2].reset(trieNode.getBuffer$runtime_release(), trieNode.entryCount$runtime_release() * 2, nodeIndex$runtime_release);
            resetPath(i, nodeAtIndex$runtime_release, obj, i2 + 1);
        }
    }

    private final void checkNextWasInvoked() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    private final void checkForComodification() {
        if (this.builder.getModCount$runtime_release() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }
}

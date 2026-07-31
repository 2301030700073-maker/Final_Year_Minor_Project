package kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PersistentHashMapBaseIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public boolean hasNext;
    public final Object[] path;
    public int pathLastIndex;

    public PersistentHashMapBaseIterator(TrieNode trieNode, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        this.$r8$classId = 0;
        trieNode.getClass();
        this.path = trieNodeBaseIteratorArr;
        this.hasNext = true;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[0];
        Object[] objArr = trieNode.buffer;
        int bitCount = Integer.bitCount(trieNode.dataMap) * 2;
        trieNodeBaseIterator.getClass();
        objArr.getClass();
        trieNodeBaseIterator.buffer = objArr;
        trieNodeBaseIterator.dataSize = bitCount;
        trieNodeBaseIterator.index = 0;
        this.pathLastIndex = 0;
        ensureNextEntryIsReady$1();
    }

    public void ensureNextEntryIsReady() {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = (TrieNodeBaseIterator[]) this.path;
        int i = this.pathLastIndex;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        if (trieNodeBaseIterator.index < trieNodeBaseIterator.dataSize) {
            return;
        }
        while (-1 < i) {
            int moveToNextNodeWithData = moveToNextNodeWithData(i);
            if (moveToNextNodeWithData == -1) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i];
                int i2 = trieNodeBaseIterator2.index;
                Object[] objArr = trieNodeBaseIterator2.buffer;
                if (i2 < objArr.length) {
                    int length = objArr.length;
                    trieNodeBaseIterator2.index = i2 + 1;
                    moveToNextNodeWithData = moveToNextNodeWithData(i);
                }
            }
            if (moveToNextNodeWithData != -1) {
                this.pathLastIndex = moveToNextNodeWithData;
                return;
            }
            if (i > 0) {
                TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i - 1];
                int i3 = trieNodeBaseIterator3.index;
                int length2 = trieNodeBaseIterator3.buffer.length;
                trieNodeBaseIterator3.index = i3 + 1;
            }
            trieNodeBaseIteratorArr[i].reset(androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode.EMPTY.buffer, 0, 0);
            i--;
        }
        this.hasNext = false;
    }

    public void ensureNextEntryIsReady$1() {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = (TrieNodeBaseIterator[]) this.path;
        int i = this.pathLastIndex;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        if (trieNodeBaseIterator.index < trieNodeBaseIterator.dataSize) {
            return;
        }
        while (-1 < i) {
            int moveToNextNodeWithData$1 = moveToNextNodeWithData$1(i);
            if (moveToNextNodeWithData$1 == -1) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i];
                int i2 = trieNodeBaseIterator2.index;
                Object[] objArr = trieNodeBaseIterator2.buffer;
                if (i2 < objArr.length) {
                    int length = objArr.length;
                    trieNodeBaseIterator2.index = i2 + 1;
                    moveToNextNodeWithData$1 = moveToNextNodeWithData$1(i);
                }
            }
            if (moveToNextNodeWithData$1 != -1) {
                this.pathLastIndex = moveToNextNodeWithData$1;
                return;
            }
            if (i > 0) {
                TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i - 1];
                int i3 = trieNodeBaseIterator3.index;
                int length2 = trieNodeBaseIterator3.buffer.length;
                trieNodeBaseIterator3.index = i3 + 1;
            }
            TrieNodeBaseIterator trieNodeBaseIterator4 = trieNodeBaseIteratorArr[i];
            Object[] objArr2 = TrieNode.EMPTY.buffer;
            trieNodeBaseIterator4.getClass();
            objArr2.getClass();
            trieNodeBaseIterator4.buffer = objArr2;
            trieNodeBaseIterator4.dataSize = 0;
            trieNodeBaseIterator4.index = 0;
            i--;
        }
        this.hasNext = false;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
        }
        return this.hasNext;
    }

    public int moveToNextNodeWithData(int i) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = (TrieNodeBaseIterator[]) this.path;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        int i2 = trieNodeBaseIterator.index;
        if (i2 < trieNodeBaseIterator.dataSize) {
            return i;
        }
        Object[] objArr = trieNodeBaseIterator.buffer;
        if (i2 >= objArr.length) {
            return -1;
        }
        int length = objArr.length;
        Object obj = objArr[i2];
        obj.getClass();
        androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode trieNode = (androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode) obj;
        if (i == 6) {
            TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i + 1];
            Object[] objArr2 = trieNode.buffer;
            trieNodeBaseIterator2.reset(objArr2, objArr2.length, 0);
        } else {
            trieNodeBaseIteratorArr[i + 1].reset(trieNode.buffer, Integer.bitCount(trieNode.dataMap) * 2, 0);
        }
        return moveToNextNodeWithData(i + 1);
    }

    public int moveToNextNodeWithData$1(int i) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = (TrieNodeBaseIterator[]) this.path;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        int i2 = trieNodeBaseIterator.index;
        if (i2 < trieNodeBaseIterator.dataSize) {
            return i;
        }
        Object[] objArr = trieNodeBaseIterator.buffer;
        if (i2 >= objArr.length) {
            return -1;
        }
        int length = objArr.length;
        Object obj = objArr[i2];
        obj.getClass();
        TrieNode trieNode = (TrieNode) obj;
        if (i == 6) {
            TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i + 1];
            Object[] objArr2 = trieNode.buffer;
            int length2 = objArr2.length;
            trieNodeBaseIterator2.getClass();
            trieNodeBaseIterator2.buffer = objArr2;
            trieNodeBaseIterator2.dataSize = length2;
            trieNodeBaseIterator2.index = 0;
        } else {
            TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i + 1];
            Object[] objArr3 = trieNode.buffer;
            int bitCount = Integer.bitCount(trieNode.dataMap) * 2;
            trieNodeBaseIterator3.getClass();
            objArr3.getClass();
            trieNodeBaseIterator3.buffer = objArr3;
            trieNodeBaseIterator3.dataSize = bitCount;
            trieNodeBaseIterator3.index = 0;
        }
        return moveToNextNodeWithData$1(i + 1);
    }

    @Override // java.util.Iterator
    public Object next() {
        int i = this.$r8$classId;
        Object[] objArr = this.path;
        switch (i) {
            case 0:
                if (!this.hasNext) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    break;
                } else {
                    Object next = ((TrieNodeBaseIterator[]) objArr)[this.pathLastIndex].next();
                    ensureNextEntryIsReady$1();
                    break;
                }
            default:
                if (!this.hasNext) {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                    break;
                } else {
                    Object next2 = ((TrieNodeBaseIterator[]) objArr)[this.pathLastIndex].next();
                    ensureNextEntryIsReady();
                    break;
                }
        }
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public PersistentHashMapBaseIterator(androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode trieNode, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        this.$r8$classId = 1;
        this.path = trieNodeBaseIteratorArr;
        this.hasNext = true;
        trieNodeBaseIteratorArr[0].reset(trieNode.buffer, Integer.bitCount(trieNode.dataMap) * 2, 0);
        this.pathLastIndex = 0;
        ensureNextEntryIsReady();
    }
}

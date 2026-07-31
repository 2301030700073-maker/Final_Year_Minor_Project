package kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TrieNodeBaseIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Object[] buffer;
    public int dataSize;
    public int index;

    public TrieNodeBaseIterator(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.buffer = androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode.EMPTY.buffer;
                break;
            default:
                this.buffer = TrieNode.EMPTY.buffer;
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.$r8$classId) {
            case 0:
                if (this.index < this.dataSize) {
                }
                break;
            default:
                if (this.index < this.dataSize) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public void reset(Object[] objArr, int i, int i2) {
        this.buffer = objArr;
        this.dataSize = i;
        this.index = i2;
    }
}

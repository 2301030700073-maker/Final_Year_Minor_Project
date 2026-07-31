package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TrieNodeMutableEntriesIterator extends TrieNodeBaseIterator {
    public final VectorGroup$iterator$1 parentIterator;

    public TrieNodeMutableEntriesIterator(VectorGroup$iterator$1 vectorGroup$iterator$1) {
        this.parentIterator = vectorGroup$iterator$1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.index;
        this.index = i + 2;
        Object[] objArr = this.buffer;
        return new MutableMapEntry(this.parentIterator, objArr[i], objArr[i + 1]);
    }
}

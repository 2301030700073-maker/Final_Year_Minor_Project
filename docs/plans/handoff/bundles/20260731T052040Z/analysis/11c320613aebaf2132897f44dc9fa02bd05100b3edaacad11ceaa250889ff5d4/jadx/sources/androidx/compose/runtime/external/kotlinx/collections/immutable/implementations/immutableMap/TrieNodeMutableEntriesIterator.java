package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

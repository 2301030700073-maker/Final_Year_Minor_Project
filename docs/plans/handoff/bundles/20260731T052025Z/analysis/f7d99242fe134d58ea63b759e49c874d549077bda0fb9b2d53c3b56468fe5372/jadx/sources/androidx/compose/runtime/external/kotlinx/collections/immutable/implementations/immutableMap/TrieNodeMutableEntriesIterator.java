package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.ui.graphics.vector.VectorGroup$iterator$1;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrieNodeMutableEntriesIterator extends TrieNodeBaseIterator {
    public final VectorGroup$iterator$1 parentIterator;

    public TrieNodeMutableEntriesIterator(VectorGroup$iterator$1 vectorGroup$iterator$1) {
        super(1);
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

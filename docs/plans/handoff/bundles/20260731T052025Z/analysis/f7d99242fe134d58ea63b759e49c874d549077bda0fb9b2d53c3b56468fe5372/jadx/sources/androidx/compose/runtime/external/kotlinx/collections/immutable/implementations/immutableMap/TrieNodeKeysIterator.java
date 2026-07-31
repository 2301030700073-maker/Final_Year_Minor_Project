package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.collection.MapEntry;
import kotlinx.collections.immutable.implementations.immutableMap.TrieNodeBaseIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrieNodeKeysIterator extends TrieNodeBaseIterator {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TrieNodeKeysIterator(int i) {
        super(1);
        this.$r8$classId = i;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                int i = this.index;
                this.index = i + 2;
                return this.buffer[i];
            case 1:
                int i2 = this.index;
                this.index = i2 + 2;
                Object[] objArr = this.buffer;
                return new MapEntry(1, objArr[i2], objArr[i2 + 1]);
            default:
                int i3 = this.index;
                this.index = i3 + 2;
                return this.buffer[i3 + 1];
        }
    }
}

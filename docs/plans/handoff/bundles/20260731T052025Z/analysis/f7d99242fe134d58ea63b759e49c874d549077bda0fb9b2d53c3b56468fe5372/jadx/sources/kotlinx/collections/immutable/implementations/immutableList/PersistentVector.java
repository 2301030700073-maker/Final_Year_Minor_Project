package kotlinx.collections.immutable.implementations.immutableList;

import java.util.ListIterator;
import kotlin.io.CloseableKt;
import okio.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PersistentVector extends AbstractPersistentList {
    public final Object[] root;
    public final int rootShift;
    public final int size;
    public final Object[] tail;

    public PersistentVector(Object[] objArr, Object[] objArr2, int i, int i2) {
        objArr.getClass();
        objArr2.getClass();
        this.root = objArr;
        this.tail = objArr2;
        this.size = i;
        this.rootShift = i2;
        if (getSize() > 32) {
            return;
        }
        throw new IllegalArgumentException(("Trie-based persistent vector should have at least 33 elements, got " + getSize()).toString());
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object[] objArr;
        int i2 = this.size;
        CloseableKt.checkElementIndex$kotlinx_collections_immutable(i, i2);
        if (((i2 - 1) & (-32)) <= i) {
            objArr = this.tail;
        } else {
            Object[] objArr2 = this.root;
            for (int i3 = this.rootShift; i3 > 0; i3 -= 5) {
                Object[] objArr3 = objArr2[Options.Companion.indexSegment(i, i3)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        CloseableKt.checkPositionIndex$kotlinx_collections_immutable(i, this.size);
        return new PersistentVectorIterator(this.root, this.tail, i, this.size, (this.rootShift / 5) + 1);
    }
}

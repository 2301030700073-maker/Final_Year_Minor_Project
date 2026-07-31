package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImmutableList$SubList extends AbstractList {
    public final int _size;
    public final int fromIndex;
    public final AbstractPersistentList source;

    public ImmutableList$SubList(AbstractPersistentList abstractPersistentList, int i, int i2) {
        this.source = abstractPersistentList;
        this.fromIndex = i;
        MathKt.checkRangeIndexes$runtime(i, i2, abstractPersistentList.getSize());
        this._size = i2 - i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        MathKt.checkElementIndex$runtime(i, this._size);
        return this.source.get(this.fromIndex + i);
    }

    @Override // kotlin.collections.AbstractCollection
    public final int getSize() {
        return this._size;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        MathKt.checkRangeIndexes$runtime(i, i2, this._size);
        int i3 = this.fromIndex;
        return new ImmutableList$SubList(this.source, i + i3, i3 + i2);
    }
}

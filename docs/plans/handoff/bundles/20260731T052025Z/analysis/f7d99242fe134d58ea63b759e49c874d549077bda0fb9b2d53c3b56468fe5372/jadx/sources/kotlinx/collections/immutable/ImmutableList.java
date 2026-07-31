package kotlinx.collections.immutable;

import java.util.Collection;
import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ImmutableList extends List, Collection, KMappedMarker {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SubList extends AbstractList implements ImmutableList {
        public final int _size;
        public final int fromIndex;
        public final AbstractPersistentList source;

        public SubList(AbstractPersistentList abstractPersistentList, int i, int i2) {
            this.source = abstractPersistentList;
            this.fromIndex = i;
            CloseableKt.checkRangeIndexes$kotlinx_collections_immutable(i, i2, abstractPersistentList.getSize());
            this._size = i2 - i;
        }

        @Override // java.util.List
        public final Object get(int i) {
            CloseableKt.checkElementIndex$kotlinx_collections_immutable(i, this._size);
            return this.source.get(this.fromIndex + i);
        }

        @Override // kotlin.collections.AbstractCollection
        public final int getSize() {
            return this._size;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            CloseableKt.checkRangeIndexes$kotlinx_collections_immutable(i, i2, this._size);
            int i3 = this.fromIndex;
            return new SubList(this.source, i + i3, i3 + i2);
        }
    }
}

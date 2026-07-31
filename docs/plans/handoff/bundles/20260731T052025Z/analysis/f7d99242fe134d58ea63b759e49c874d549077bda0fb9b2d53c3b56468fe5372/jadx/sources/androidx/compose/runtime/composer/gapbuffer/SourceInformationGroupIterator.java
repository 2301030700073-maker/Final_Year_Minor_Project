package androidx.compose.runtime.composer.gapbuffer;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SourceInformationGroupIterator implements Iterator, KMappedMarker {
    public int index;
    public final int parent;
    public final Util path;
    public final SlotTable table;
    public final int version;

    public SourceInformationGroupIterator(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, Util util) {
        this.table = slotTable;
        this.parent = i;
        this.path = util;
        this.version = slotTable.version;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        throw null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

package androidx.compose.runtime.composer.gapbuffer;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SourceInformationGroupIterator implements Iterator, KMappedMarker {
    public int index;
    public final int parent;
    public final AppKt path;
    public final SlotTable table;
    public final int version;

    public SourceInformationGroupIterator(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, AppKt appKt) {
        this.table = slotTable;
        this.parent = i;
        this.path = appKt;
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

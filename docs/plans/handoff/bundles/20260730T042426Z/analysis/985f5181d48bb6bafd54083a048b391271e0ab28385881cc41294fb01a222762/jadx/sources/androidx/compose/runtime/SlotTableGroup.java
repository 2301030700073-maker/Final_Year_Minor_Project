package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: SlotTable.kt */
/* loaded from: classes.dex */
final class SlotTableGroup implements CompositionGroup, Iterable, KMappedMarker {
    private final int group;
    private final SlotTable table;
    private final int version;

    public SlotTableGroup(SlotTable slotTable, int i, int i2) {
        this.table = slotTable;
        this.group = i;
        this.version = i2;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        int groupSize;
        validateRead();
        this.table.sourceInformationOf(this.group);
        SlotTable slotTable = this.table;
        int i = this.group;
        groupSize = SlotTableKt.groupSize(slotTable.getGroups(), this.group);
        return new GroupIterator(slotTable, i + 1, i + groupSize);
    }

    private final void validateRead() {
        if (this.table.getVersion$runtime_release() != this.version) {
            throw new ConcurrentModificationException();
        }
    }
}

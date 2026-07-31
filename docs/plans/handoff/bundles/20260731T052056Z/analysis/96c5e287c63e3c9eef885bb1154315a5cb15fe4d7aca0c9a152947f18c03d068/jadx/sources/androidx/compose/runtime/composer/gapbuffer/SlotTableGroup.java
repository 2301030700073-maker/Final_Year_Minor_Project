package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionData;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SlotTableGroup implements CompositionData, Iterable, KMappedMarker {
    public final int group;
    public final SlotTable table;
    public final int version;

    public SlotTableGroup(SlotTable slotTable, int i, int i2) {
        this.table = slotTable;
        this.group = i;
        this.version = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SlotTableGroup)) {
            return false;
        }
        SlotTableGroup slotTableGroup = (SlotTableGroup) obj;
        return slotTableGroup.group == this.group && slotTableGroup.version == this.version && slotTableGroup.table == this.table;
    }

    public final int hashCode() {
        return (this.table.hashCode() * 31) + this.group;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        SlotTable slotTable = this.table;
        if (slotTable.version != this.version) {
            SlotTableKt.throwConcurrentModificationException();
        }
        int i = this.group;
        slotTable.sourceInformationOf(i);
        return new GroupIterator(slotTable, i + 1, slotTable.groups[(i * 5) + 3] + i);
    }
}

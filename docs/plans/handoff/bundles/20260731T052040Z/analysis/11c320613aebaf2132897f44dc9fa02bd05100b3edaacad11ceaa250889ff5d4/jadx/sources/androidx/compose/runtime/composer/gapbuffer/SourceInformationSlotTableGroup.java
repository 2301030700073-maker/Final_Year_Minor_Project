package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionData;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SourceInformationSlotTableGroup implements CompositionData, Iterable, KMappedMarker {
    public final RelativeGroupPath identityPath;
    public final int parent;
    public final SlotTable table;

    public SourceInformationSlotTableGroup(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, RelativeGroupPath relativeGroupPath) {
        this.table = slotTable;
        this.parent = i;
        this.identityPath = relativeGroupPath;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SourceInformationSlotTableGroup)) {
            return false;
        }
        SourceInformationSlotTableGroup sourceInformationSlotTableGroup = (SourceInformationSlotTableGroup) obj;
        return sourceInformationSlotTableGroup.parent == this.parent && sourceInformationSlotTableGroup.table == this.table && sourceInformationSlotTableGroup.identityPath.equals(this.identityPath);
    }

    public final int hashCode() {
        return this.identityPath.hashCode() + ((this.table.hashCode() + (this.parent * 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new SourceInformationGroupIterator(this.table, this.parent, null, this.identityPath);
    }
}

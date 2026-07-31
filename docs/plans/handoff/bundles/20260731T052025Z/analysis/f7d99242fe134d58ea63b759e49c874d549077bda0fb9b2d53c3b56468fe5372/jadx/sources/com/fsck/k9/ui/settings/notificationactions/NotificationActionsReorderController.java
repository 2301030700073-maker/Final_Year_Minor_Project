package com.fsck.k9.ui.settings.notificationactions;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationActionsReorderController {
    public final ParcelableSnapshotMutableIntState cutoffIndexState$delegate;
    public boolean dragDidMove;
    public final ParcelableSnapshotMutableState draggedKey$delegate;
    public final ParcelableSnapshotMutableFloatState draggedOffsetY$delegate;
    public final Function2 onStateChanged;
    public final SnapshotStateList renderedItemsState;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SwapDecision {
        public final float offsetCompensation;
        public final int toIndex;

        public SwapDecision(int i, float f) {
            this.toIndex = i;
            this.offsetCompensation = f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SwapDecision)) {
                return false;
            }
            SwapDecision swapDecision = (SwapDecision) obj;
            return this.toIndex == swapDecision.toIndex && Float.compare(this.offsetCompensation, swapDecision.offsetCompensation) == 0;
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.offsetCompensation) + (this.toIndex * 31);
        }

        public final String toString() {
            return "SwapDecision(toIndex=" + this.toIndex + ", offsetCompensation=" + this.offsetCompensation + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpwardSwapConfig {
        public final float offsetCompensation;
        public final float threshold;

        public UpwardSwapConfig(float f, float f2) {
            this.threshold = f;
            this.offsetCompensation = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpwardSwapConfig)) {
                return false;
            }
            UpwardSwapConfig upwardSwapConfig = (UpwardSwapConfig) obj;
            return Float.compare(this.threshold, upwardSwapConfig.threshold) == 0 && Float.compare(this.offsetCompensation, upwardSwapConfig.offsetCompensation) == 0;
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.offsetCompensation) + (Float.floatToIntBits(this.threshold) * 31);
        }

        public final String toString() {
            return "UpwardSwapConfig(threshold=" + this.threshold + ", offsetCompensation=" + this.offsetCompensation + ")";
        }
    }

    public NotificationActionsReorderController(ImmutableList immutableList, int i, Function2 function2) {
        immutableList.getClass();
        function2.getClass();
        this.onStateChanged = function2;
        this.renderedItemsState = new SnapshotStateList();
        this.cutoffIndexState$delegate = new ParcelableSnapshotMutableIntState(0);
        this.draggedKey$delegate = Updater.mutableStateOf$default(null);
        this.draggedOffsetY$delegate = new ParcelableSnapshotMutableFloatState(0.0f);
        setState(i, immutableList);
    }

    public final boolean canMove(String str, int i) {
        SnapshotStateList snapshotStateList = this.renderedItemsState;
        ListIterator listIterator = snapshotStateList.listIterator();
        int i2 = 0;
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                i2 = -1;
                break;
            }
            if (NotificationListItemKt.getKey((NotificationListItem) itr.next()).equals(str)) {
                break;
            }
            i2++;
        }
        if (i2 != -1) {
            int i3 = i + i2;
            int size = snapshotStateList.size() - 1;
            if (3 <= size) {
                size = 3;
            }
            if (i2 >= 0 && i2 < snapshotStateList.size() && i3 >= 0 && i3 < snapshotStateList.size() && i2 != i3 && (i2 != this.cutoffIndexState$delegate.getIntValue() || i3 <= size)) {
                return true;
            }
        }
        return false;
    }

    public final boolean moveByStep(String str, int i) {
        ListIterator listIterator = this.renderedItemsState.listIterator();
        boolean z = false;
        int i2 = 0;
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                i2 = -1;
                break;
            }
            if (NotificationListItemKt.getKey((NotificationListItem) itr.next()).equals(str)) {
                break;
            }
            i2++;
        }
        int i3 = i + i2;
        if (i2 != -1 && moveRenderedItem(i2, i3)) {
            z = true;
        }
        if (z) {
            notifyStateChanged();
        }
        return z;
    }

    public final boolean moveRenderedItem(int i, int i2) {
        int i3;
        SnapshotStateList snapshotStateList = this.renderedItemsState;
        int lastIndex = IntOffsetKt.getLastIndex(snapshotStateList);
        if (3 <= lastIndex) {
            lastIndex = 3;
        }
        int i4 = 0;
        boolean z = i < 0 || i >= snapshotStateList.size() || i2 < 0 || i2 >= snapshotStateList.size() || i == i2;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = this.cutoffIndexState$delegate;
        boolean z2 = i == parcelableSnapshotMutableIntState.getIntValue() && i2 > lastIndex;
        if (z || z2) {
            return false;
        }
        int intValue = parcelableSnapshotMutableIntState.getIntValue();
        boolean z3 = i2 <= intValue && intValue < i;
        NotificationListItem notificationListItem = (NotificationListItem) CollectionsKt.getOrNull(intValue - 1, snapshotStateList);
        String key = notificationListItem != null ? NotificationListItemKt.getKey(notificationListItem) : null;
        snapshotStateList.add(i2, snapshotStateList.remove(i));
        ListIterator listIterator = snapshotStateList.listIterator();
        int i5 = 0;
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            i3 = -1;
            if (!itr.hasNext()) {
                i5 = -1;
                break;
            }
            if (((NotificationListItem) itr.next()) instanceof NotificationListItem.Cutoff) {
                break;
            }
            i5++;
        }
        parcelableSnapshotMutableIntState.setIntValue(i5);
        if (z3 && parcelableSnapshotMutableIntState.getIntValue() > lastIndex && key != null) {
            ListIterator listIterator2 = snapshotStateList.listIterator();
            while (true) {
                ListBuilder.Itr itr2 = (ListBuilder.Itr) listIterator2;
                if (!itr2.hasNext()) {
                    break;
                }
                if (NotificationListItemKt.getKey((NotificationListItem) itr2.next()).equals(key)) {
                    i3 = i4;
                    break;
                }
                i4++;
            }
            if (i3 >= 0 && i3 < parcelableSnapshotMutableIntState.getIntValue()) {
                NotificationListItem notificationListItem2 = (NotificationListItem) snapshotStateList.remove(i3);
                parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() - 1);
                snapshotStateList.add(parcelableSnapshotMutableIntState.getIntValue() + 1, notificationListItem2);
            }
        }
        if (parcelableSnapshotMutableIntState.getIntValue() > lastIndex) {
            snapshotStateList.add(lastIndex, snapshotStateList.remove(parcelableSnapshotMutableIntState.getIntValue()));
            parcelableSnapshotMutableIntState.setIntValue(lastIndex);
        }
        return true;
    }

    public final void notifyStateChanged() {
        ArrayList arrayList = new ArrayList();
        ListIterator listIterator = this.renderedItemsState.listIterator();
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                break;
            }
            Object next = itr.next();
            if (next instanceof NotificationListItem.Action) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((NotificationListItem.Action) it.next()).action);
        }
        this.onStateChanged.invoke(arrayList2, Integer.valueOf(this.cutoffIndexState$delegate.getIntValue()));
    }

    public final void setState(int i, List list) {
        list.getClass();
        SnapshotStateList snapshotStateList = this.renderedItemsState;
        snapshotStateList.clear();
        int coerceIn = RangesKt.coerceIn(i, 0, list.size());
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        Iterator it = list.iterator();
        int i2 = 0;
        while (true) {
            boolean hasNext = it.hasNext();
            NotificationListItem.Cutoff cutoff = NotificationListItem.Cutoff.INSTANCE;
            if (!hasNext) {
                if (coerceIn == list.size()) {
                    createListBuilder.add(cutoff);
                }
                snapshotStateList.addAll(IntOffsetKt.build(createListBuilder));
                ListIterator listIterator = snapshotStateList.listIterator();
                int i3 = 0;
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    if (!itr.hasNext()) {
                        i3 = -1;
                        break;
                    } else if (((NotificationListItem) itr.next()) instanceof NotificationListItem.Cutoff) {
                        break;
                    } else {
                        i3++;
                    }
                }
                this.cutoffIndexState$delegate.setIntValue(i3);
                this.draggedKey$delegate.setValue(null);
                this.draggedOffsetY$delegate.setFloatValue(0.0f);
                this.dragDidMove = false;
                return;
            }
            Object next = it.next();
            int i4 = i2 + 1;
            if (i2 < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            MessageNotificationAction messageNotificationAction = (MessageNotificationAction) next;
            if (i2 == coerceIn) {
                createListBuilder.add(cutoff);
            }
            createListBuilder.add(new NotificationListItem.Action(messageNotificationAction));
            i2 = i4;
        }
    }
}

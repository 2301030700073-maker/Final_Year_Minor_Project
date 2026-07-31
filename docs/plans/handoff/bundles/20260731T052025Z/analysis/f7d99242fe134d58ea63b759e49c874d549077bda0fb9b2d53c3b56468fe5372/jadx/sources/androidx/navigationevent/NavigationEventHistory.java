package androidx.navigationevent;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.OperationKt;
import java.util.List;
import kotlin.collections.builders.ListBuilder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavigationEventHistory {
    public ListBuilder _mergedHistory;
    public final List backInfo;
    public final int currentIndex;
    public final OperationKt currentInfo;
    public final List forwardInfo;

    public NavigationEventHistory(OperationKt operationKt, List list, List list2, int i) {
        this.currentInfo = operationKt;
        this.backInfo = list;
        this.forwardInfo = list2;
        this.currentIndex = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavigationEventHistory.class != obj.getClass()) {
            return false;
        }
        NavigationEventHistory navigationEventHistory = (NavigationEventHistory) obj;
        return this.currentIndex == navigationEventHistory.currentIndex && getMergedHistory().equals(navigationEventHistory.getMergedHistory());
    }

    public final List getMergedHistory() {
        if (this._mergedHistory == null) {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            createListBuilder.addAll(this.backInfo);
            OperationKt operationKt = this.currentInfo;
            if (operationKt != null) {
                createListBuilder.add(operationKt);
            }
            createListBuilder.addAll(this.forwardInfo);
            this._mergedHistory = IntOffsetKt.build(createListBuilder);
        }
        ListBuilder listBuilder = this._mergedHistory;
        listBuilder.getClass();
        return listBuilder;
    }

    public final int hashCode() {
        return getMergedHistory().hashCode() + (this.currentIndex * 31);
    }

    public final String toString() {
        return "NavigationEventHistory(currentIndex=" + this.currentIndex + ", mergedHistory=" + getMergedHistory() + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationEventHistory() {
        /*
            r3 = this;
            r0 = -1
            kotlin.collections.EmptyList r1 = kotlin.collections.EmptyList.INSTANCE
            r2 = 0
            r3.<init>(r2, r1, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigationevent.NavigationEventHistory.<init>():void");
    }
}

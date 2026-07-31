package androidx.navigationevent;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavigationEventHistory {
    public final int currentIndex;
    public final List mergedHistory;

    public NavigationEventHistory(int i, List list) {
        this.mergedHistory = list;
        this.currentIndex = i;
        if (list.isEmpty() && i == -1) {
            return;
        }
        if (!list.isEmpty()) {
            int size = list.size();
            if (i >= 0 && i < size) {
                return;
            }
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m(Modifier.CC.m179m("Invalid 'NavigationEventHistory' state:  'currentIndex' must be within the bounds of 'mergedHistory' (or -1 if empty). Received: currentIndex = '", i, "', bounds = '"), (Object) new IntRange(0, list.size() - 1, 1), (Object) "'.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavigationEventHistory.class != obj.getClass()) {
            return false;
        }
        NavigationEventHistory navigationEventHistory = (NavigationEventHistory) obj;
        return this.currentIndex == navigationEventHistory.currentIndex && Intrinsics.areEqual(this.mergedHistory, navigationEventHistory.mergedHistory);
    }

    public final int hashCode() {
        return this.mergedHistory.hashCode() + (this.currentIndex * 31);
    }

    public final String toString() {
        return "NavigationEventHistory(currentIndex=" + this.currentIndex + ", mergedHistory=" + this.mergedHistory + ')';
    }

    public NavigationEventHistory() {
        this(-1, EmptyList.INSTANCE);
    }
}

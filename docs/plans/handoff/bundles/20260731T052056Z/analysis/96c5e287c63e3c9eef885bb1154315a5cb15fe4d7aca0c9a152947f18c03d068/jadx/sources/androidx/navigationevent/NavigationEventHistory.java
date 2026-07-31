package androidx.navigationevent;

import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.room.Room;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigationEventHistory {
    public final int currentIndex;
    public final List mergedHistory;

    public NavigationEventHistory(List list, int i) {
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
        TimeSource$Companion$$ExternalSyntheticLambda0.m(Animation.CC.m20m(i, "Invalid 'NavigationEventHistory' state:  'currentIndex' must be within the bounds of 'mergedHistory' (or -1 if empty). Received: currentIndex = '", "', bounds = '"), (Object) Room.getIndices(list), (Object) "'.");
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
        this(EmptyList.INSTANCE, -1);
    }
}

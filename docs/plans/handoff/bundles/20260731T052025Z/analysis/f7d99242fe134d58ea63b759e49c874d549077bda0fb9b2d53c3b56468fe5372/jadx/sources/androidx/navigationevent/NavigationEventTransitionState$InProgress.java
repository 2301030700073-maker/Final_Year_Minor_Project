package androidx.navigationevent;

import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavigationEventTransitionState$InProgress extends IntOffsetKt {
    public final NavigationEvent latestEvent;

    public NavigationEventTransitionState$InProgress(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        this.latestEvent = navigationEvent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && NavigationEventTransitionState$InProgress.class == obj.getClass() && Intrinsics.areEqual(this.latestEvent, ((NavigationEventTransitionState$InProgress) obj).latestEvent);
    }

    public final int hashCode() {
        return this.latestEvent.hashCode() - 31;
    }

    public final String toString() {
        return "InProgress(latestEvent=" + this.latestEvent + ", direction=-1)";
    }
}

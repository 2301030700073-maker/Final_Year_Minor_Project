package androidx.navigationevent;

import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavigationEventTransitionState$InProgress extends UnsignedKt {
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

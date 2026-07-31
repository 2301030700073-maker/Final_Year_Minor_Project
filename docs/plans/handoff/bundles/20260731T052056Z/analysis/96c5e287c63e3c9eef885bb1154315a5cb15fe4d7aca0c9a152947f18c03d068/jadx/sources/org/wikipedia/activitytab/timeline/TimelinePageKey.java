package org.wikipedia.activitytab.timeline;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimelinePageKey {
    public final Map cursors;

    public TimelinePageKey(Map map) {
        map.getClass();
        this.cursors = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TimelinePageKey) && Intrinsics.areEqual(this.cursors, ((TimelinePageKey) obj).cursors);
    }

    public final int hashCode() {
        return this.cursors.hashCode();
    }

    public final String toString() {
        return "TimelinePageKey(cursors=" + this.cursors + ")";
    }
}

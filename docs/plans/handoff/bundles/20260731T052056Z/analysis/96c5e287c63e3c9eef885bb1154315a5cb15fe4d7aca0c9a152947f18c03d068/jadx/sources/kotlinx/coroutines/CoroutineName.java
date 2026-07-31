package kotlinx.coroutines;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoroutineName extends AbstractCoroutineContextElement {
    public static final Job.Key Key = new Job.Key();

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof CoroutineName);
    }

    public final int hashCode() {
        return 1115242006;
    }

    public final String toString() {
        return "CoroutineName(Room Invalidation Tracker Refresh)";
    }
}

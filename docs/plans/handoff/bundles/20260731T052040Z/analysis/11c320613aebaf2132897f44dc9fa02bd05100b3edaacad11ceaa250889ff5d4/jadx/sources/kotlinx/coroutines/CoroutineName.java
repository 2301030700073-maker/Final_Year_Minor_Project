package kotlinx.coroutines;

import androidx.compose.ui.Modifier;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CoroutineName extends AbstractCoroutineContextElement {
    public static final Job.Key Key = new Job.Key();
    public final String name;

    public CoroutineName() {
        super(Key);
        this.name = "Room Invalidation Tracker Refresh";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CoroutineName) && Intrinsics.areEqual(this.name, ((CoroutineName) obj).name);
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("CoroutineName("), this.name, ')');
    }
}

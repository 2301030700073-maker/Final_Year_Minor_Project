package androidx.compose.runtime.tooling;

import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposeStackTraceFrame {
    public final int groupKey;
    public final Integer groupOffset;

    public ComposeStackTraceFrame(int i, MathKt mathKt, Integer num) {
        this.groupKey = i;
        this.groupOffset = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeStackTraceFrame)) {
            return false;
        }
        ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) obj;
        return this.groupKey == composeStackTraceFrame.groupKey && Intrinsics.areEqual(null, null) && Intrinsics.areEqual(this.groupOffset, composeStackTraceFrame.groupOffset);
    }

    public final int hashCode() {
        int i = ((this.groupKey * 31) + 0) * 31;
        Integer num = this.groupOffset;
        return i + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return "ComposeStackTraceFrame(groupKey=" + this.groupKey + ", sourceInfo=" + ((Object) null) + ", groupOffset=" + this.groupOffset + ')';
    }
}

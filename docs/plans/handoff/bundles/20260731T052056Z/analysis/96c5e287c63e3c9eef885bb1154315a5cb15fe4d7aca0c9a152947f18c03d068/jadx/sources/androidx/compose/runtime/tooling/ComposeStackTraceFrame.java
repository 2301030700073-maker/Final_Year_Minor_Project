package androidx.compose.runtime.tooling;

import androidx.work.Operation$State;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeStackTraceFrame {
    public final int groupKey;
    public final Integer groupOffset;

    public ComposeStackTraceFrame(int i, Operation$State operation$State, Integer num) {
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

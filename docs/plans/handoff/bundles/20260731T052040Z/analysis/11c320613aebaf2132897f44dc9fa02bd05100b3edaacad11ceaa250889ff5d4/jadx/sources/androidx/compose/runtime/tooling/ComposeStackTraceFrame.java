package androidx.compose.runtime.tooling;

import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeStackTraceFrame {
    public final int groupKey;
    public final Integer groupOffset;

    public ComposeStackTraceFrame(int i, Jsoup jsoup, Integer num) {
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

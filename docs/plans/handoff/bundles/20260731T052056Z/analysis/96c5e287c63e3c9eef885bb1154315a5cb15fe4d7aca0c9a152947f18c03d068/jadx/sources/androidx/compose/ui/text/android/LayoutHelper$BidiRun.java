package androidx.compose.ui.text.android;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutHelper$BidiRun {
    public final int end;
    public final boolean isRtl;
    public final int start;

    public LayoutHelper$BidiRun(int i, int i2, boolean z) {
        this.start = i;
        this.end = i2;
        this.isRtl = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LayoutHelper$BidiRun)) {
            return false;
        }
        LayoutHelper$BidiRun layoutHelper$BidiRun = (LayoutHelper$BidiRun) obj;
        return this.start == layoutHelper$BidiRun.start && this.end == layoutHelper$BidiRun.end && this.isRtl == layoutHelper$BidiRun.isRtl;
    }

    public final int hashCode() {
        return (((this.start * 31) + this.end) * 31) + (this.isRtl ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BidiRun(start=");
        sb.append(this.start);
        sb.append(", end=");
        sb.append(this.end);
        sb.append(", isRtl=");
        return Animation.CC.m(sb, this.isRtl, ')');
    }
}

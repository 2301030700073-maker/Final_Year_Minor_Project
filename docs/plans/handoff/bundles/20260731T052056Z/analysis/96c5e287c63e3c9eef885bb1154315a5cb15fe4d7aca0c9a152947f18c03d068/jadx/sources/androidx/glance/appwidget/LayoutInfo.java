package androidx.glance.appwidget;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutInfo {
    public final int layoutId;

    public LayoutInfo(int i) {
        this.layoutId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LayoutInfo) && this.layoutId == ((LayoutInfo) obj).layoutId;
    }

    public final int hashCode() {
        return this.layoutId;
    }

    public final String toString() {
        return Animation.CC.m(new StringBuilder("LayoutInfo(layoutId="), this.layoutId, ')');
    }
}

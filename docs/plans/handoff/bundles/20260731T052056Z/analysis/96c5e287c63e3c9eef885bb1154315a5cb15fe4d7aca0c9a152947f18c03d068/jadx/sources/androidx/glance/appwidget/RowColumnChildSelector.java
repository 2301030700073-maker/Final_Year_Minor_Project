package androidx.glance.appwidget;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RowColumnChildSelector {
    public final boolean expandHeight;
    public final boolean expandWidth;
    public final LayoutType type;

    public RowColumnChildSelector(LayoutType layoutType, boolean z, boolean z2) {
        this.type = layoutType;
        this.expandWidth = z;
        this.expandHeight = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowColumnChildSelector)) {
            return false;
        }
        RowColumnChildSelector rowColumnChildSelector = (RowColumnChildSelector) obj;
        return this.type == rowColumnChildSelector.type && this.expandWidth == rowColumnChildSelector.expandWidth && this.expandHeight == rowColumnChildSelector.expandHeight;
    }

    public final int hashCode() {
        return (((this.type.hashCode() * 31) + (this.expandWidth ? 1231 : 1237)) * 31) + (this.expandHeight ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RowColumnChildSelector(type=");
        sb.append(this.type);
        sb.append(", expandWidth=");
        sb.append(this.expandWidth);
        sb.append(", expandHeight=");
        return Animation.CC.m(sb, this.expandHeight, ')');
    }
}

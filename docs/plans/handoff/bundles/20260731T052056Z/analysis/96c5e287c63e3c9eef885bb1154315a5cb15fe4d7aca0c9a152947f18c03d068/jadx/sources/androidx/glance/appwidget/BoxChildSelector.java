package androidx.glance.appwidget;

import androidx.glance.layout.Alignment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BoxChildSelector {
    public final int horizontalAlignment;
    public final LayoutType type;
    public final int verticalAlignment;

    public BoxChildSelector(LayoutType layoutType, int i, int i2) {
        this.type = layoutType;
        this.horizontalAlignment = i;
        this.verticalAlignment = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxChildSelector)) {
            return false;
        }
        BoxChildSelector boxChildSelector = (BoxChildSelector) obj;
        return this.type == boxChildSelector.type && this.horizontalAlignment == boxChildSelector.horizontalAlignment && this.verticalAlignment == boxChildSelector.verticalAlignment;
    }

    public final int hashCode() {
        return (((this.type.hashCode() * 31) + this.horizontalAlignment) * 31) + this.verticalAlignment;
    }

    public final String toString() {
        return "BoxChildSelector(type=" + this.type + ", horizontalAlignment=" + ((Object) Alignment.Horizontal.m746toStringimpl(this.horizontalAlignment)) + ", verticalAlignment=" + ((Object) Alignment.Vertical.m748toStringimpl(this.verticalAlignment)) + ')';
    }
}

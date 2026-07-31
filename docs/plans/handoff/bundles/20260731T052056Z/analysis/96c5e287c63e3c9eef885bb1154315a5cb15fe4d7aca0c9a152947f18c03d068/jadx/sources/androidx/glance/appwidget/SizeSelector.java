package androidx.glance.appwidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SizeSelector {
    public final LayoutSize height;
    public final LayoutSize width;

    public SizeSelector(LayoutSize layoutSize, LayoutSize layoutSize2) {
        this.width = layoutSize;
        this.height = layoutSize2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeSelector)) {
            return false;
        }
        SizeSelector sizeSelector = (SizeSelector) obj;
        return this.width == sizeSelector.width && this.height == sizeSelector.height;
    }

    public final int hashCode() {
        return this.height.hashCode() + (this.width.hashCode() * 31);
    }

    public final String toString() {
        return "SizeSelector(width=" + this.width + ", height=" + this.height + ')';
    }
}

package androidx.glance.appwidget;

import androidx.glance.layout.Alignment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContainerSelector {
    public final Alignment.Horizontal horizontalAlignment;
    public final int numChildren;
    public final LayoutType type;
    public final Alignment.Vertical verticalAlignment;

    public /* synthetic */ ContainerSelector(LayoutType layoutType, int i, Alignment.Horizontal horizontal, Alignment.Vertical vertical, int i2) {
        this(layoutType, i, (i2 & 4) != 0 ? null : horizontal, (i2 & 8) != 0 ? null : vertical);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContainerSelector)) {
            return false;
        }
        ContainerSelector containerSelector = (ContainerSelector) obj;
        return this.type == containerSelector.type && this.numChildren == containerSelector.numChildren && Intrinsics.areEqual(this.horizontalAlignment, containerSelector.horizontalAlignment) && Intrinsics.areEqual(this.verticalAlignment, containerSelector.verticalAlignment);
    }

    public final int hashCode() {
        int hashCode = ((this.type.hashCode() * 31) + this.numChildren) * 31;
        Alignment.Horizontal horizontal = this.horizontalAlignment;
        int i = (hashCode + (horizontal == null ? 0 : horizontal.value)) * 31;
        Alignment.Vertical vertical = this.verticalAlignment;
        return i + (vertical != null ? vertical.value : 0);
    }

    public final String toString() {
        return "ContainerSelector(type=" + this.type + ", numChildren=" + this.numChildren + ", horizontalAlignment=" + this.horizontalAlignment + ", verticalAlignment=" + this.verticalAlignment + ')';
    }

    public ContainerSelector(LayoutType layoutType, int i, Alignment.Horizontal horizontal, Alignment.Vertical vertical) {
        this.type = layoutType;
        this.numChildren = i;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
    }
}

package androidx.glance.appwidget;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContainerInfo {
    public final int layoutId;

    public ContainerInfo(int i) {
        this.layoutId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ContainerInfo) && this.layoutId == ((ContainerInfo) obj).layoutId;
    }

    public final int hashCode() {
        return this.layoutId;
    }

    public final String toString() {
        return Animation.CC.m(new StringBuilder("ContainerInfo(layoutId="), this.layoutId, ')');
    }
}

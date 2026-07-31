package androidx.glance.appwidget;

import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InsertedViewInfo {
    public final Map children;
    public final int complexViewId;
    public final int mainViewId;

    public /* synthetic */ InsertedViewInfo(int i, int i2, Map map, int i3) {
        this((i3 & 1) != 0 ? -1 : i, (i3 & 2) != 0 ? -1 : i2, (i3 & 4) != 0 ? EmptyMap.INSTANCE : map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsertedViewInfo)) {
            return false;
        }
        InsertedViewInfo insertedViewInfo = (InsertedViewInfo) obj;
        return this.mainViewId == insertedViewInfo.mainViewId && this.complexViewId == insertedViewInfo.complexViewId && Intrinsics.areEqual(this.children, insertedViewInfo.children);
    }

    public final int hashCode() {
        return this.children.hashCode() + (((this.mainViewId * 31) + this.complexViewId) * 31);
    }

    public final String toString() {
        return "InsertedViewInfo(mainViewId=" + this.mainViewId + ", complexViewId=" + this.complexViewId + ", children=" + this.children + ')';
    }

    public InsertedViewInfo(int i, int i2, Map map) {
        this.mainViewId = i;
        this.complexViewId = i2;
        this.children = map;
    }
}

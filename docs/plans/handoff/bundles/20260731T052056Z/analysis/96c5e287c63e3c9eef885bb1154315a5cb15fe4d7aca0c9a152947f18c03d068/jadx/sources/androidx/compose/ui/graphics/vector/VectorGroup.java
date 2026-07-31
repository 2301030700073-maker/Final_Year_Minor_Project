package androidx.compose.ui.graphics.vector;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VectorGroup extends VectorNode implements Iterable, KMappedMarker {
    public final ArrayList children;
    public final List clipPathData;
    public final String name;
    public final float pivotX;
    public final float pivotY;
    public final float rotation;
    public final float scaleX;
    public final float scaleY;
    public final float translationX;
    public final float translationY;

    public VectorGroup(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list, ArrayList arrayList) {
        this.name = str;
        this.rotation = f;
        this.pivotX = f2;
        this.pivotY = f3;
        this.scaleX = f4;
        this.scaleY = f5;
        this.translationX = f6;
        this.translationY = f7;
        this.clipPathData = list;
        this.children = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof VectorGroup)) {
            return false;
        }
        VectorGroup vectorGroup = (VectorGroup) obj;
        return Intrinsics.areEqual(this.name, vectorGroup.name) && this.rotation == vectorGroup.rotation && this.pivotX == vectorGroup.pivotX && this.pivotY == vectorGroup.pivotY && this.scaleX == vectorGroup.scaleX && this.scaleY == vectorGroup.scaleY && this.translationX == vectorGroup.translationX && this.translationY == vectorGroup.translationY && Intrinsics.areEqual(this.clipPathData, vectorGroup.clipPathData) && this.children.equals(vectorGroup.children);
    }

    public final int hashCode() {
        return this.children.hashCode() + Modifier.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(this.name.hashCode() * 31, this.rotation, 31), this.pivotX, 31), this.pivotY, 31), this.scaleX, 31), this.scaleY, 31), this.translationX, 31), this.translationY, 31), 31, this.clipPathData);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new VectorGroup$iterator$1(this);
    }
}

package androidx.glance.layout;

import androidx.glance.GlanceModifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PaddingModifier implements GlanceModifier.Element {
    public final PaddingDimension bottom;
    public final PaddingDimension end;
    public final PaddingDimension left;
    public final PaddingDimension right;
    public final PaddingDimension start;
    public final PaddingDimension top;

    public /* synthetic */ PaddingModifier(PaddingDimension paddingDimension, PaddingDimension paddingDimension2, PaddingDimension paddingDimension3, PaddingDimension paddingDimension4) {
        this(new PaddingDimension(3, RecyclerView.DECELERATION_RATE), paddingDimension, paddingDimension2, new PaddingDimension(3, RecyclerView.DECELERATION_RATE), paddingDimension3, paddingDimension4);
    }

    @Override // androidx.glance.GlanceModifier
    public final boolean all() {
        return true;
    }

    @Override // androidx.glance.GlanceModifier
    public final boolean any(Function1 function1) {
        return ((Boolean) function1.invoke(this)).booleanValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PaddingModifier)) {
            return false;
        }
        PaddingModifier paddingModifier = (PaddingModifier) obj;
        return Intrinsics.areEqual(this.left, paddingModifier.left) && Intrinsics.areEqual(this.start, paddingModifier.start) && Intrinsics.areEqual(this.top, paddingModifier.top) && Intrinsics.areEqual(this.right, paddingModifier.right) && Intrinsics.areEqual(this.end, paddingModifier.end) && Intrinsics.areEqual(this.bottom, paddingModifier.bottom);
    }

    @Override // androidx.glance.GlanceModifier
    public final Object foldIn(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    public final int hashCode() {
        return this.bottom.hashCode() + ((this.end.hashCode() + ((this.right.hashCode() + ((this.top.hashCode() + ((this.start.hashCode() + (this.left.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    @Override // androidx.glance.GlanceModifier
    public final /* synthetic */ GlanceModifier then(GlanceModifier glanceModifier) {
        return ViewSizeResolver$CC.$default$then(this, glanceModifier);
    }

    public final String toString() {
        return "PaddingModifier(left=" + this.left + ", start=" + this.start + ", top=" + this.top + ", right=" + this.right + ", end=" + this.end + ", bottom=" + this.bottom + ')';
    }

    public PaddingModifier(PaddingDimension paddingDimension, PaddingDimension paddingDimension2, PaddingDimension paddingDimension3, PaddingDimension paddingDimension4, PaddingDimension paddingDimension5, PaddingDimension paddingDimension6) {
        this.left = paddingDimension;
        this.start = paddingDimension2;
        this.top = paddingDimension3;
        this.right = paddingDimension4;
        this.end = paddingDimension5;
        this.bottom = paddingDimension6;
    }
}

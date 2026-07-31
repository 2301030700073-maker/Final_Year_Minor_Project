package androidx.compose.foundation;

import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/MagnifierElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/MagnifierNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MagnifierElement extends ModifierNodeElement {
    public final Function1 onSizeChanged;
    public final PlatformMagnifierFactory platformMagnifierFactory;
    public final Function1 sourceCenter;

    public MagnifierElement(Function1 function1, Function1 function12, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = function1;
        this.onSizeChanged = function12;
        this.platformMagnifierFactory = platformMagnifierFactory;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new MagnifierNode(this.sourceCenter, this.onSizeChanged, this.platformMagnifierFactory);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return this.platformMagnifierFactory.hashCode() + ((this.onSizeChanged.hashCode() + ((((Float.floatToIntBits(Float.NaN) + Animation.CC.m((((Float.floatToIntBits(Float.NaN) + (this.sourceCenter.hashCode() * 961)) * 31) + 1231) * 961, Float.NaN, 31)) * 31) + 1231) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        MagnifierNode magnifierNode = (MagnifierNode) node;
        float f = magnifierNode.zoom;
        long j = magnifierNode.size;
        float f2 = magnifierNode.cornerRadius;
        boolean z = magnifierNode.useTextDefault;
        float f3 = magnifierNode.elevation;
        boolean z2 = magnifierNode.clippingEnabled;
        PlatformMagnifierFactory platformMagnifierFactory = magnifierNode.platformMagnifierFactory;
        View view = magnifierNode.view;
        Density density = magnifierNode.density;
        magnifierNode.sourceCenter = this.sourceCenter;
        magnifierNode.zoom = Float.NaN;
        magnifierNode.useTextDefault = true;
        magnifierNode.size = 9205357640488583168L;
        magnifierNode.cornerRadius = Float.NaN;
        magnifierNode.elevation = Float.NaN;
        magnifierNode.clippingEnabled = true;
        magnifierNode.onSizeChanged = this.onSizeChanged;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.platformMagnifierFactory;
        magnifierNode.platformMagnifierFactory = platformMagnifierFactory2;
        View requireView = HitTestResultKt.requireView(magnifierNode);
        Density density2 = HitTestResultKt.requireLayoutNode(magnifierNode).density;
        if (magnifierNode.magnifier != null) {
            SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.MagnifierPositionInRoot;
            if (((!Float.isNaN(Float.NaN) || !Float.isNaN(f)) && Float.NaN != f && !platformMagnifierFactory2.getCanUpdateZoom()) || 9205357640488583168L != j || !Dp.m693equalsimpl0(Float.NaN, f2) || !Dp.m693equalsimpl0(Float.NaN, f3) || true != z || true != z2 || !platformMagnifierFactory2.equals(platformMagnifierFactory) || !requireView.equals(view) || !Intrinsics.areEqual(density2, density)) {
                magnifierNode.recreateMagnifier();
            }
        }
        magnifierNode.updateMagnifier();
    }
}

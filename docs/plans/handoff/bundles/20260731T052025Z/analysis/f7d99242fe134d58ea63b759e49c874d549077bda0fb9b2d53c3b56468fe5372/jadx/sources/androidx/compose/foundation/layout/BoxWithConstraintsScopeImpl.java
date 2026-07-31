package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {
    public final long constraints;
    public final Density density;

    public BoxWithConstraintsScopeImpl(SubcomposeMeasureScope subcomposeMeasureScope, long j) {
        this.density = subcomposeMeasureScope;
        this.constraints = j;
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    public final Modifier align(Modifier modifier, BiasAlignment biasAlignment) {
        return modifier.then(new BoxChildDataElement(biasAlignment, false));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxWithConstraintsScopeImpl)) {
            return false;
        }
        BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
        return Intrinsics.areEqual(this.density, boxWithConstraintsScopeImpl.density) && Constraints.m728equalsimpl0(this.constraints, boxWithConstraintsScopeImpl.constraints);
    }

    /* renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name */
    public final float m201getMaxWidthD9Ej5fM() {
        long j = this.constraints;
        if (!Constraints.m730getHasBoundedWidthimpl(j)) {
            return Float.POSITIVE_INFINITY;
        }
        return this.density.mo174toDpu2uoSUM(Constraints.m734getMaxWidthimpl(j));
    }

    public final int hashCode() {
        int hashCode = this.density.hashCode() * 31;
        long j = this.constraints;
        return ((int) (j ^ (j >>> 32))) + hashCode;
    }

    public final String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.density + ", constraints=" + ((Object) Constraints.m737toStringimpl(this.constraints)) + ')';
    }
}

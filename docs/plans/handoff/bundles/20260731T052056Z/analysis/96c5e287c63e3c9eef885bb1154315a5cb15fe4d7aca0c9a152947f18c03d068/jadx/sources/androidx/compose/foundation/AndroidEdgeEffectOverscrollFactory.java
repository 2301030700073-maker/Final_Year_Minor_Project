package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollFactory {
    public final Context context;
    public final Density density;
    public final long glowColor;
    public final PaddingValuesImpl glowDrawPadding;

    public AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValuesImpl paddingValuesImpl) {
        this.context = context;
        this.density = density;
        this.glowColor = j;
        this.glowDrawPadding = paddingValuesImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidEdgeEffectOverscrollFactory.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) obj;
        if (!Intrinsics.areEqual(this.context, androidEdgeEffectOverscrollFactory.context) || !Intrinsics.areEqual(this.density, androidEdgeEffectOverscrollFactory.density)) {
            return false;
        }
        long j = androidEdgeEffectOverscrollFactory.glowColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.glowColor, j) && this.glowDrawPadding.equals(androidEdgeEffectOverscrollFactory.glowDrawPadding);
    }

    public final int hashCode() {
        int hashCode = (this.density.hashCode() + (this.context.hashCode() * 31)) * 31;
        int i = Color.$r8$clinit;
        return this.glowDrawPadding.hashCode() + Animation.CC.m(hashCode, 31, this.glowColor);
    }
}

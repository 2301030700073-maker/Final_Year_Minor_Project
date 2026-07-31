package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollFactory {
    public final Context context;
    public final Density density;
    public final long glowColor;
    public final PaddingValues glowDrawPadding;

    public AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j, PaddingValues paddingValues) {
        this.context = context;
        this.density = density;
        this.glowColor = j;
        this.glowDrawPadding = paddingValues;
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
        return Intrinsics.areEqual(this.context, androidEdgeEffectOverscrollFactory.context) && Intrinsics.areEqual(this.density, androidEdgeEffectOverscrollFactory.density) && Color.m244equalsimpl0(this.glowColor, androidEdgeEffectOverscrollFactory.glowColor) && Intrinsics.areEqual(this.glowDrawPadding, androidEdgeEffectOverscrollFactory.glowDrawPadding);
    }

    public final int hashCode() {
        int hashCode = (this.density.hashCode() + (this.context.hashCode() * 31)) * 31;
        int i = Color.$r8$clinit;
        return this.glowDrawPadding.hashCode() + Modifier.CC.m(hashCode, this.glowColor, 31);
    }
}

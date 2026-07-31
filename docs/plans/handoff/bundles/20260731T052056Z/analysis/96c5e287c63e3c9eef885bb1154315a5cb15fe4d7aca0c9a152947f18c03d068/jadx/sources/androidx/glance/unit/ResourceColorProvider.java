package androidx.glance.unit;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ResourceColorProvider implements ColorProvider {
    public final int resId;

    public ResourceColorProvider(int i) {
        this.resId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ResourceColorProvider) && this.resId == ((ResourceColorProvider) obj).resId;
    }

    @Override // androidx.glance.unit.ColorProvider
    /* renamed from: getColor-vNxB06k */
    public final long mo744getColorvNxB06k(Context context) {
        return ColorKt.Color(ColorProviderApi23Impl.INSTANCE.getColor(context, this.resId));
    }

    public final int hashCode() {
        return this.resId;
    }

    public final String toString() {
        return Animation.CC.m(new StringBuilder("ResourceColorProvider(resId="), this.resId, ')');
    }
}

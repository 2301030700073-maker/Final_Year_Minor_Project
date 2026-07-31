package androidx.compose.ui.graphics.shadow;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidShadowContext$ShadowKey {
    public float density;
    public LayoutDirection layoutDirection;
    public Shadow shadow;
    public Shape shape;
    public long size;

    public AndroidShadowContext$ShadowKey(Shape shape, long j, LayoutDirection layoutDirection, float f, Shadow shadow) {
        this.shape = shape;
        this.size = j;
        this.layoutDirection = layoutDirection;
        this.density = f;
        this.shadow = shadow;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AndroidShadowContext$ShadowKey)) {
            return false;
        }
        AndroidShadowContext$ShadowKey androidShadowContext$ShadowKey = (AndroidShadowContext$ShadowKey) obj;
        return Intrinsics.areEqual(this.shape, androidShadowContext$ShadowKey.shape) && Size.m394equalsimpl0(this.size, androidShadowContext$ShadowKey.size) && this.layoutDirection == androidShadowContext$ShadowKey.layoutDirection && Float.compare(this.density, androidShadowContext$ShadowKey.density) == 0 && Intrinsics.areEqual(this.shadow, androidShadowContext$ShadowKey.shadow);
    }

    public final int hashCode() {
        int hashCode = this.shape.hashCode() * 31;
        long j = this.size;
        int m = Animation.CC.m((this.layoutDirection.hashCode() + ((((int) (j ^ (j >>> 32))) + hashCode) * 31)) * 31, this.density, 31);
        Shadow shadow = this.shadow;
        return m + (shadow == null ? 0 : shadow.hashCode());
    }

    public final String toString() {
        return "ShadowKey(shape=" + this.shape + ", size=" + ((Object) Size.m399toStringimpl(this.size)) + ", layoutDirection=" + this.layoutDirection + ", density=" + this.density + ", shadow=" + this.shadow + ')';
    }
}

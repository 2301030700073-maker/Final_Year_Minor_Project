package androidx.window.layout;

import android.graphics.Rect;
import androidx.compose.animation.core.Animation;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowMetrics {
    public final Bounds _bounds;
    public final float density;

    public WindowMetrics(Rect rect, float f) {
        this._bounds = new Bounds(rect);
        this.density = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!WindowMetrics.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        WindowMetrics windowMetrics = (WindowMetrics) obj;
        return Intrinsics.areEqual(this._bounds, windowMetrics._bounds) && this.density == windowMetrics.density;
    }

    public final Rect getBounds() {
        Bounds bounds = this._bounds;
        bounds.getClass();
        return new Rect(bounds.left, bounds.top, bounds.right, bounds.bottom);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.density) + (this._bounds.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WindowMetrics(_bounds=");
        sb.append(this._bounds);
        sb.append(", density=");
        return Animation.CC.m(sb, this.density, ')');
    }

    public WindowMetrics(Bounds bounds, float f) {
        this._bounds = bounds;
        this.density = f;
    }
}

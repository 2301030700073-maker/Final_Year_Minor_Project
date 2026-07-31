package androidx.window.layout;

import android.graphics.Rect;
import androidx.compose.ui.Modifier;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return Modifier.CC.m(sb, this.density, ')');
    }

    public WindowMetrics(Bounds bounds, float f) {
        this._bounds = bounds;
        this.density = f;
    }
}

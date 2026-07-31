package androidx.compose.ui.graphics;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.geometry.Offset;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Shadow {
    public static final Shadow None = new Shadow(ColorKt.Color(4278190080L), 0, 0.0f);
    public final float blurRadius;
    public final long color;
    public final long offset;

    public Shadow(long j, long j2, float f) {
        this.color = j;
        this.offset = j2;
        this.blurRadius = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Color.m482equalsimpl0(this.color, shadow.color) && Offset.m437equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Float.floatToIntBits(this.blurRadius) + ((Offset.m439hashCodeimpl(this.offset) + (ULong.m980hashCodeimpl(this.color) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Shadow(color=");
        Config.CC.m(this.color, sb, ", offset=");
        sb.append((Object) Offset.m443toStringimpl(this.offset));
        sb.append(", blurRadius=");
        return CameraDevices$CC.m(sb, this.blurRadius, ')');
    }
}

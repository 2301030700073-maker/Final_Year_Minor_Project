package androidx.compose.ui.graphics;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Shadow {
    public static final Shadow None = new Shadow(ColorKt.Color(4278190080L), 0, RecyclerView.DECELERATION_RATE);
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
        long j = shadow.color;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.color, j) && Offset.m383equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Float.floatToIntBits(this.blurRadius) + ((Modifier.CC.m(this.offset) + (Modifier.CC.m(this.color) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Shadow(color=");
        Animation.CC.m(this.color, sb, ", offset=");
        sb.append((Object) Offset.m388toStringimpl(this.offset));
        sb.append(", blurRadius=");
        return Animation.CC.m(sb, this.blurRadius, ')');
    }
}

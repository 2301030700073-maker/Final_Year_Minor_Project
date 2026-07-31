package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Shadow {
    public static final Shadow None = new Shadow(Brush.Color(4278190080L), 0, 0.0f);
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
        return Color.m244equalsimpl0(this.color, shadow.color) && Offset.m196equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Float.floatToIntBits(this.blurRadius) + ((Offset.m198hashCodeimpl(this.offset) + (ULong.m658hashCodeimpl(this.color) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Shadow(color=");
        Modifier.CC.m181m(this.color, ", offset=", sb);
        sb.append((Object) Offset.m202toStringimpl(this.offset));
        sb.append(", blurRadius=");
        return Modifier.CC.m(sb, this.blurRadius, ')');
    }
}

package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabPosition {
    public final float contentWidth;
    public final float left;
    public final float width;

    public TabPosition(float f, float f2, float f3) {
        this.left = f;
        this.width = f2;
        this.contentWidth = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabPosition)) {
            return false;
        }
        TabPosition tabPosition = (TabPosition) obj;
        return Dp.m443equalsimpl0(this.left, tabPosition.left) && Dp.m443equalsimpl0(this.width, tabPosition.width) && Dp.m443equalsimpl0(this.contentWidth, tabPosition.contentWidth);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.contentWidth) + Modifier.CC.m(this.width, Float.floatToIntBits(this.left) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TabPosition(left=");
        float f = this.left;
        sb.append((Object) Dp.m444toStringimpl(f));
        sb.append(", right=");
        float f2 = this.width;
        sb.append((Object) Dp.m444toStringimpl(f + f2));
        sb.append(", width=");
        sb.append((Object) Dp.m444toStringimpl(f2));
        sb.append(", contentWidth=");
        sb.append((Object) Dp.m444toStringimpl(this.contentWidth));
        sb.append(')');
        return sb.toString();
    }
}

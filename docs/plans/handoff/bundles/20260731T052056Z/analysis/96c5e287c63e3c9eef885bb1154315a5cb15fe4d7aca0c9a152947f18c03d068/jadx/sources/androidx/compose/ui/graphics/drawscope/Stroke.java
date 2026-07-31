package androidx.compose.ui.graphics.drawscope;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Stroke extends DrawStyle {
    public final int cap;
    public final int join;
    public final float miter;
    public final float width;

    public Stroke(float f, float f2, int i, int i2, int i3) {
        f2 = (i3 & 2) != 0 ? 4.0f : f2;
        i = (i3 & 4) != 0 ? 0 : i;
        i2 = (i3 & 8) != 0 ? 0 : i2;
        this.width = f;
        this.miter = f2;
        this.cap = i;
        this.join = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        return this.width == stroke.width && this.miter == stroke.miter && this.cap == stroke.cap && this.join == stroke.join;
    }

    public final int hashCode() {
        return (((Animation.CC.m(Float.floatToIntBits(this.width) * 31, this.miter, 31) + this.cap) * 31) + this.join) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Stroke(width=");
        sb.append(this.width);
        sb.append(", miter=");
        sb.append(this.miter);
        sb.append(", cap=");
        String str = "Unknown";
        int i = this.cap;
        sb.append((Object) (i == 0 ? "Butt" : i == 1 ? "Round" : i == 2 ? "Square" : "Unknown"));
        sb.append(", join=");
        int i2 = this.join;
        if (i2 == 0) {
            str = "Miter";
        } else if (i2 == 1) {
            str = "Round";
        } else if (i2 == 2) {
            str = "Bevel";
        }
        sb.append((Object) str);
        sb.append(", pathEffect=null)");
        return sb.toString();
    }
}

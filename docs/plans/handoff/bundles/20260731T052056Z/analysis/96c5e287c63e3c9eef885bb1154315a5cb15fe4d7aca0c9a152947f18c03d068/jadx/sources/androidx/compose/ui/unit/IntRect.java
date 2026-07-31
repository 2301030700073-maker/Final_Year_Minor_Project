package androidx.compose.ui.unit;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntRect {
    public static final IntRect Zero = new IntRect(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;
    public final int top;

    public IntRect(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntRect)) {
            return false;
        }
        IntRect intRect = (IntRect) obj;
        return this.left == intRect.left && this.top == intRect.top && this.right == intRect.right && this.bottom == intRect.bottom;
    }

    /* renamed from: getCenter-nOcc-ac, reason: not valid java name */
    public final long m719getCenternOccac() {
        return (((getHeight() / 2) + this.top) & 4294967295L) | (((getWidth() / 2) + this.left) << 32);
    }

    public final int getHeight() {
        return this.bottom - this.top;
    }

    /* renamed from: getTopLeft-nOcc-ac, reason: not valid java name */
    public final long m720getTopLeftnOccac() {
        return (this.left << 32) | (this.top & 4294967295L);
    }

    public final int getWidth() {
        return this.right - this.left;
    }

    public final int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IntRect.fromLTRB(");
        sb.append(this.left);
        sb.append(", ");
        sb.append(this.top);
        sb.append(", ");
        sb.append(this.right);
        sb.append(", ");
        return Animation.CC.m(sb, this.bottom, ')');
    }
}

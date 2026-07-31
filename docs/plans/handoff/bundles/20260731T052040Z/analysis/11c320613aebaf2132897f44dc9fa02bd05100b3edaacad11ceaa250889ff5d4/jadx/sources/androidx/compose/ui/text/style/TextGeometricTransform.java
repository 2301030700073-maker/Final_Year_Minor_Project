package androidx.compose.ui.text.style;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextGeometricTransform {
    public static final TextGeometricTransform None = new TextGeometricTransform(1.0f, 0.0f);
    public final float scaleX;
    public final float skewX;

    public TextGeometricTransform(float f, float f2) {
        this.scaleX = f;
        this.skewX = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextGeometricTransform)) {
            return false;
        }
        TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj;
        return this.scaleX == textGeometricTransform.scaleX && this.skewX == textGeometricTransform.skewX;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.skewX) + (Float.floatToIntBits(this.scaleX) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextGeometricTransform(scaleX=");
        sb.append(this.scaleX);
        sb.append(", skewX=");
        return Modifier.CC.m(sb, this.skewX, ')');
    }
}

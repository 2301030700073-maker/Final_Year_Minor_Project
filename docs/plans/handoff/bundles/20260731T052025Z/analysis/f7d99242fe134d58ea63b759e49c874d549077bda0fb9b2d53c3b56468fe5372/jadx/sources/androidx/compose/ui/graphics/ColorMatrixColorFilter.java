package androidx.compose.ui.graphics;

import android.os.Build;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorMatrixColorFilter extends ColorFilter {
    public float[] colorMatrix;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ColorMatrixColorFilter) && Arrays.equals(m502obtainColorMatrixp10uLo(), ((ColorMatrixColorFilter) obj).m502obtainColorMatrixp10uLo());
    }

    public final int hashCode() {
        float[] fArr = this.colorMatrix;
        if (fArr != null) {
            return Arrays.hashCode(fArr);
        }
        return 0;
    }

    /* renamed from: obtainColorMatrix-p10-uLo, reason: not valid java name */
    public final float[] m502obtainColorMatrixp10uLo() {
        float[] fArr = this.colorMatrix;
        if (fArr != null) {
            return fArr;
        }
        android.graphics.ColorFilter colorFilter = this.nativeColorFilter;
        if (!(colorFilter instanceof android.graphics.ColorMatrixColorFilter) || 26 > Build.VERSION.SDK_INT) {
            UriKt$$ExternalSyntheticBUOutline0.m("Unable to obtain ColorMatrix from Android ColorMatrixColorFilter. This method was invoked on an unsupported Android version");
            return null;
        }
        float[] m473getColorMatrix8unuwjk = Api26Bitmap.m473getColorMatrix8unuwjk((android.graphics.ColorMatrixColorFilter) colorFilter);
        this.colorMatrix = m473getColorMatrix8unuwjk;
        return m473getColorMatrix8unuwjk;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ColorMatrixColorFilter(colorMatrix=");
        float[] fArr = this.colorMatrix;
        if (fArr == null) {
            str = "null";
        } else {
            str = "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
        }
        sb.append((Object) str);
        sb.append(')');
        return sb.toString();
    }
}

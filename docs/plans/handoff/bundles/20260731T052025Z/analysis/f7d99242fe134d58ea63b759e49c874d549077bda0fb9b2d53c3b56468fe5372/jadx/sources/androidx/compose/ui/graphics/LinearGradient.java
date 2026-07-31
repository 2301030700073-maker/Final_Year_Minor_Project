package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LinearGradient extends ShaderBrush {
    public final ArrayList colors;
    public final long end;
    public final long start;
    public final ArrayList stops;
    public final int tileMode;

    public LinearGradient(ArrayList arrayList, ArrayList arrayList2, long j, long j2, int i) {
        this.colors = arrayList;
        this.stops = arrayList2;
        this.start = j;
        this.end = j2;
        this.tileMode = i;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* renamed from: createShader-uvyYCjk */
    public final Shader mo476createShaderuvyYCjk(long j) {
        long j2 = this.start;
        int i = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i) == Float.POSITIVE_INFINITY) {
            i = (int) (j >> 32);
        }
        float intBitsToFloat = Float.intBitsToFloat(i);
        int i2 = (int) (j2 & 4294967295L);
        if (Float.intBitsToFloat(i2) == Float.POSITIVE_INFINITY) {
            i2 = (int) (j & 4294967295L);
        }
        float intBitsToFloat2 = Float.intBitsToFloat(i2);
        long j3 = this.end;
        int i3 = (int) (j3 >> 32);
        if (Float.intBitsToFloat(i3) == Float.POSITIVE_INFINITY) {
            i3 = (int) (j >> 32);
        }
        float intBitsToFloat3 = Float.intBitsToFloat(i3);
        int i4 = (int) (j3 & 4294967295L);
        if (Float.intBitsToFloat(i4) == Float.POSITIVE_INFINITY) {
            i4 = (int) (j & 4294967295L);
        }
        float intBitsToFloat4 = Float.intBitsToFloat(i4);
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat3) << 32) | (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L);
        ArrayList arrayList = this.colors;
        ArrayList arrayList2 = this.stops;
        ColorKt.validateColorStops(arrayList, arrayList2);
        int countTransparentColors = ColorKt.countTransparentColors(arrayList);
        return new android.graphics.LinearGradient(Float.intBitsToFloat((int) (floatToRawIntBits >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)), Float.intBitsToFloat((int) (floatToRawIntBits2 >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits2 & 4294967295L)), ColorKt.makeTransparentColors(countTransparentColors, arrayList), ColorKt.makeTransparentStops(arrayList2, arrayList, countTransparentColors), ColorKt.m499toAndroidTileMode0vamqd0(this.tileMode));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        return this.colors.equals(linearGradient.colors) && this.stops.equals(linearGradient.stops) && Offset.m437equalsimpl0(this.start, linearGradient.start) && Offset.m437equalsimpl0(this.end, linearGradient.end) && this.tileMode == linearGradient.tileMode;
    }

    public final int hashCode() {
        return ((Offset.m439hashCodeimpl(this.end) + ((Offset.m439hashCodeimpl(this.start) + Config.CC.m(this.stops, this.colors.hashCode() * 31, 31)) * 31)) * 31) + this.tileMode;
    }

    public final String toString() {
        String str;
        long j = this.start;
        String str2 = "";
        if (((((j & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str = "start=" + ((Object) Offset.m443toStringimpl(j)) + ", ";
        } else {
            str = "";
        }
        long j2 = this.end;
        if (((((j2 & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str2 = "end=" + ((Object) Offset.m443toStringimpl(j2)) + ", ";
        }
        StringBuilder sb = new StringBuilder("LinearGradient(colors=");
        sb.append(this.colors);
        sb.append(", stops=");
        sb.append(this.stops);
        sb.append(", ");
        sb.append(str);
        sb.append(str2);
        sb.append("tileMode=");
        int i = this.tileMode;
        sb.append((Object) (i == 0 ? "Clamp" : i == 1 ? "Repeated" : i == 2 ? "Mirror" : i == 3 ? "Decal" : "Unknown"));
        sb.append(')');
        return sb.toString();
    }
}

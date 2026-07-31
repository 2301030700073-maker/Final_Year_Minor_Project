package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RadialGradient extends ShaderBrush {
    public final long center;
    public final ArrayList colors;
    public final float radius;
    public final ArrayList stops;
    public final int tileMode;

    public RadialGradient(ArrayList arrayList, ArrayList arrayList2, long j, float f, int i) {
        this.colors = arrayList;
        this.stops = arrayList2;
        this.center = j;
        this.radius = f;
        this.tileMode = i;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    /* renamed from: createShader-uvyYCjk */
    public final Shader mo251createShaderuvyYCjk(long j) {
        float intBitsToFloat;
        float intBitsToFloat2;
        long j2 = this.center;
        if ((9223372034707292159L & j2) == 9205357640488583168L) {
            long m668getCenteruvyYCjk = RangesKt.m668getCenteruvyYCjk(j);
            intBitsToFloat = Float.intBitsToFloat((int) (m668getCenteruvyYCjk >> 32));
            intBitsToFloat2 = Float.intBitsToFloat((int) (m668getCenteruvyYCjk & 4294967295L));
        } else {
            int i = (int) (j2 >> 32);
            if (Float.intBitsToFloat(i) == Float.POSITIVE_INFINITY) {
                i = (int) (j >> 32);
            }
            intBitsToFloat = Float.intBitsToFloat(i);
            int i2 = (int) (j2 & 4294967295L);
            if (Float.intBitsToFloat(i2) == Float.POSITIVE_INFINITY) {
                i2 = (int) (j & 4294967295L);
            }
            intBitsToFloat2 = Float.intBitsToFloat(i2);
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        float f = this.radius;
        if (f == Float.POSITIVE_INFINITY) {
            f = Size.m207getMinDimensionimpl(j) / 2.0f;
        }
        float f2 = f;
        ArrayList arrayList = this.colors;
        ArrayList arrayList2 = this.stops;
        Brush.validateColorStops(arrayList, arrayList2);
        int countTransparentColors = Brush.countTransparentColors(arrayList);
        return new android.graphics.RadialGradient(Float.intBitsToFloat((int) (floatToRawIntBits >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)), f2, Brush.makeTransparentColors(countTransparentColors, arrayList), Brush.makeTransparentStops(arrayList2, arrayList, countTransparentColors), Brush.m234toAndroidTileMode0vamqd0(this.tileMode));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RadialGradient)) {
            return false;
        }
        RadialGradient radialGradient = (RadialGradient) obj;
        return this.colors.equals(radialGradient.colors) && this.stops.equals(radialGradient.stops) && Offset.m196equalsimpl0(this.center, radialGradient.center) && this.radius == radialGradient.radius && this.tileMode == radialGradient.tileMode;
    }

    public final int hashCode() {
        return Modifier.CC.m(this.radius, (Offset.m198hashCodeimpl(this.center) + ((this.stops.hashCode() + (this.colors.hashCode() * 31)) * 31)) * 31, 31) + this.tileMode;
    }

    public final String toString() {
        String str;
        long j = this.center;
        String str2 = "";
        if ((9223372034707292159L & j) != 9205357640488583168L) {
            str = "center=" + ((Object) Offset.m202toStringimpl(j)) + ", ";
        } else {
            str = "";
        }
        float f = this.radius;
        if ((Float.floatToRawIntBits(f) & Log.LOG_LEVEL_OFF) < 2139095040) {
            str2 = "radius=" + f + ", ";
        }
        StringBuilder sb = new StringBuilder("RadialGradient(colors=");
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
